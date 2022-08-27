class Knight
  attr_reader :position, :path

  @@MOVE_TRANSFORMATIONS = [[2, 1], [2, -1], [-2, 1], [-2, -1]]

  def initialize(position, path = [])
    @position = position
    @path = path
  end

  def available_new_positions
    row, col = *position
    positions = []

    @@MOVE_TRANSFORMATIONS.each do |a, b|
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
