#!/bin/bash

# Compile the maze program
gcc skelton.c -o maze_executable

echo -e "~~ Testing Maze Game ~~"

# Test for loading a valid maze file
echo -n "Testing loading a valid maze file - "
./maze_executable valid_maze.txt > tmp
if grep -q "Successfully loaded maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a non-existent maze file
echo -n "Testing loading a non-existent maze file - "
./maze_executable non_existent_maze.txt > tmp
if grep -q "Error: Unable to open file." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a maze file with invalid format
echo -n "Testing loading a maze file with invalid format - "
./maze_executable invalid_format_maze.txt > tmp
if grep -q "Error: Invalid maze file format." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a maze file with invalid characters
echo -n "Testing loading a maze file with invalid characters - "
./maze_executable invalid_characters_maze.txt > tmp
if grep -q "Error: Invalid characters in maze file." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for successful navigation through the maze and winning
echo -n "Testing successful navigation and winning - "
./maze_executable valid_maze.txt < input_moves.txt > tmp
if grep -q "Congratulations! You have won!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for player collision with a wall
echo -n "Testing player collision with a wall - "
./maze_executable wall_collision_maze.txt < input_moves.txt > tmp
if grep -q "Invalid move. Try again." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for player trying to move out of bounds
echo -n "Testing player trying to move out of bounds - "
./maze_executable out_of_bounds_maze.txt < input_moves.txt > tmp
if grep -q "Invalid move. Try again." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for player quitting the game
echo -n "Testing player quitting the game - "
./maze_executable valid_maze.txt < quit_input.txt > tmp
if grep -q "Goodbye!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a very large maze file
echo -n "Testing loading a very large maze file - "
./maze_executable large_maze.txt > tmp
if grep -q "Successfully loaded maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a maze file with minimum dimensions
echo -n "Testing loading a maze file with minimum dimensions - "
./maze_executable minimum_dimension_maze.txt > tmp
if grep -q "Successfully loaded maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading a maze file with maximum dimensions
echo -n "Testing loading a maze file with maximum dimensions - "
./maze_executable maximum_dimension_maze.txt > tmp
if grep -q "Successfully loaded maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze with multiple paths
echo -n "Testing navigation through a maze with multiple paths - "
./maze_executable multiple_paths_maze.txt < input_moves.txt > tmp
if grep -q "Congratulations! You have won!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze with dead ends
echo -n "Testing navigation through a maze with dead ends - "
./maze_executable dead_ends_maze.txt < input_moves.txt > tmp
if grep -q "Congratulations! You have won!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze with loops
echo -n "Testing navigation through a maze with loops - "
./maze_executable maze_with_loops.txt < input_moves.txt > tmp
if grep -q "Congratulations! You have won!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze with multiple exits
echo -n "Testing navigation through a maze with multiple exits - "
./maze_executable multiple_exits_maze.txt < input_moves.txt > tmp
if grep -q "Congratulations! You have won!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze without an exit
echo -n "Testing navigation through a maze without an exit - "
./maze_executable no_exit_maze.txt < input_moves.txt > tmp
if grep -q "No exit found. Game over." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for loading an empty maze file
echo -n "Testing loading an empty maze file - "
./maze_executable empty_maze.txt > tmp
if grep -q "Error: Invalid maze file format." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze without a starting point
echo -n "Testing navigation through a maze without a starting point - "
./maze_executable no_starting_point_maze.txt < input_moves.txt > tmp
if grep -q "Error: Starting point not found in maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Test for navigating through a maze without walls
echo -n "Testing navigation through a maze without walls - "
./maze_executable no_walls_maze.txt < input_moves.txt > tmp
if grep -q "Error: Invalid maze file format." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Clean up temporary files
rm -f tmp maze_executable







