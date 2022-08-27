class Knight
  attr_reader :position, :path

  MOVE_TRANSFORMATIONS = [[2, 1], [2, -1], [-2, 1], [-2, -1]].freeze

  def initialize(position, path = [])
    @position = position
    @path = path
  end

  def available_new_positions
    row, col = *position
    positions = []

    MOVE_TRANSFORMATIONS.each do |a, b|
      positions << [row + a, col + b] if move_valid?(row + a, col + b)
      positions << [row + b, col + a] if move_valid?(row + b, col + a)
    end

    positions
  end

  private

  def move_valid?(new_row, new_col)
    new_row.between?(0, 7) && new_col.between?(0, 7) && !@path.include?([new_row, new_col])
  end
end

class Game
  def initialize(start_position, end_position)
    @start_position = start_position
    @end_position = end_position
  end

  def solve
    initial_knight = Knight.new(start_position)
    result = nil
    q = [initial_knight]

    until result
      k = q.shift

      result = k.path if k.position == end_position

      k.available_new_positions.each { |new_pos| q << Knight.new(new_pos, k.path + [k.position]) }
    end

    result + [end_position]
  end

  private

  attr_reader :start_position, :end_position
end

g = Game.new([3, 3], [7, 3])
p g.solve
