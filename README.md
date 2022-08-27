# Knights Travails
This project is part of [The Odin Project's'](https://theodinproject.com) Ruby curriculum.

## The problem
Given the coordinates of a knight located on an 8x8 chess board, and the goal coordinates, determine the **shortest** path the knight can take to get from his position to the desired position.

## My solution
My solution utilizes a simple algorithm using the [Breadth-first search](https://en.wikipedia.org/wiki/Breadth-first_search) of a graph. Each of the board's position acts as a vertex in a graph, and is directly connected to other vertices, which in this case are all the valid new squares the knight can go to from his current square. 

It also takes advantage of possibly the simplest data structure on the planet, [queue](https://www.geeksforgeeks.org/queue-data-structure).

## Some notes
I wanted to write a simple solution to a simple problem, which I think I achieved. It surely isn't the fastest, or best way to do it, but it's pretty good for what it is. If the given board was bigger, I would consider making some adjustments, namely to the way the program stores the path the knight has already taken.

Also, if you're coming from TOP, please note that the board coordinate system here is a little different from the one they show. Instead of refering to the squares by digits 1 to 8, and numbers a to h, we refer to the rows (from top to bottom) using **numbers 0 to 7** (the same goes for the columns, from left to right). 

