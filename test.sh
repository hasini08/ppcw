#!/bin/bash

# Function to test the maze program
function test_maze {
    # Run the maze program with the given input and check the output
    output=$(./maze $1 < $2)
    expected_output=$(cat $3)

    if [ "$output" == "$expected_output" ]; then
        echo "Test passed"
    else
        echo "Test failed"
    fi
}


# Test 1: Loading valid maze file
echo "Test 1: Loading valid maze file"
test_maze valid_maze.txt valid_input.txt valid_maze_output.txt

# Test 2: Loading invalid maze file
echo "Test 2: Loading invalid maze file"
test_maze invalid_maze.txt invalid_maze_input.txt invalid_maze_output.txt

# Test 3: Player movement within maze
echo "Test 3: Player movement within maze"
test_maze valid_maze.txt movement_input.txt movement_output.txt

# Test 4: Player walks into a wall
echo "Test 4: Player walks into a wall"
test_maze valid_maze.txt wall_input.txt wall_output.txt

# Test 5: Player moves out of bounds
echo "Test 5: Player moves out of bounds"
test_maze valid_maze.txt bounds_input.txt bounds_output.txt

# Test 6: Display map
echo "Test 6: Display map"
test_maze valid_maze.txt map_input.txt map_output.txt

# Test 7: Player completes maze
echo "Test 7: Player completes maze"
test_maze valid_maze.txt completed_input.txt completed_output.txt

# Test 8: Player moves after completing maze
echo "Test 8: Player moves after completing maze"
test_maze valid_maze.txt completed_input.txt completed_output.txt

# Test 9: Handling unexpected user inputs
echo "Test 9: Handling unexpected user inputs"
test_maze valid_maze.txt unexpected_input.txt unexpected_output.txt

# Test 10: Handling system errors
echo "Test 10: Handling system errors"
test_maze valid_maze.txt system_error_input.txt system_error_output.txt

# Test 11: Handling bad user inputs
echo "Test 11: Handling bad user inputs"
test_maze valid_maze.txt bad_input.txt bad_output.txt

# Test 12: Loading valid maze file (Second Maze)
echo "Test 12: Loading valid maze file (Second Maze)"
test_maze valid_maze_2.txt valid_maze_2_input.txt valid_maze_2_output.txt

# Test 13: Loading invalid maze file (Second Maze)
echo "Test 13: Loading invalid maze file (Second Maze)"
test_maze invalid_maze_2.txt invalid_maze_2_input.txt invalid_maze_2_output.txt

# Test 14: Player movement within maze (Second Maze)
echo "Test 14: Player movement within maze (Second Maze)"
test_maze valid_maze_2.txt movement_input.txt movement_output.txt

# Test 15: Player walks into a wall (Second Maze)
echo "Test 15: Player walks into a wall (Second Maze)"
test_maze valid_maze_2.txt wall_input.txt wall_output.txt

# Test 16: Player moves out of bounds (Second Maze)
echo "Test 16: Player moves out of bounds (Second Maze)"
test_maze valid_maze_2.txt bounds_input.txt bounds_output.txt

# Test 17: Display map (Second Maze)
echo "Test 17: Display map (Second Maze)"
test_maze valid_maze_2.txt map_input.txt map_output.txt

# Test 18: Player completes maze (Second Maze)
echo "Test 18: Player completes maze (Second Maze)"
test_maze valid_maze_2.txt completed_input.txt completed_output.txt

# Test 19: Player moves after completing maze (Second Maze)
echo "Test 19: Player moves after completing maze (Second Maze)"
test_maze valid_maze_2.txt completed_input.txt completed_output.txt

# Test 20: Handling unexpected user inputs (Second Maze)
echo "Test 20: Handling unexpected user inputs (Second Maze)"
test_maze valid_maze_2.txt unexpected_input.txt unexpected_output.txt

# Test 21: Handling system errors (Second Maze)
echo "Test 21: Handling system errors (Second Maze)"
test_maze valid_maze_2.txt system_error_input.txt system_error_output.txt

# Test 22: Handling bad user inputs (Second Maze)
echo "Test 22: Handling bad user inputs (Second Maze)"
test_maze valid_maze_2.txt bad_input.txt bad_output.txt

# Test 23: Loading valid maze file (Third Maze)
echo "Test 23: Loading valid maze file (Third Maze)"
test_maze valid_maze_3.txt valid_maze_3_input.txt valid_maze_3_output.txt

# Test 24: Loading invalid maze file (Third Maze)
echo "Test 24: Loading invalid maze file (Third Maze)"
test_maze invalid_maze_3.txt invalid_maze_3_input.txt invalid_maze_3_output.txt

# Test 25: Player movement within maze (Third Maze)
echo "Test 25: Player movement within maze (Third Maze)"
test_maze valid_maze_3.txt movement_input.txt movement_output.txt

# Test 26: Player walks into a wall (Third Maze)
echo "Test 26: Player walks into a wall (Third Maze)"
test_maze valid_maze_3.txt wall_input.txt




