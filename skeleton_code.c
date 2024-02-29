#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define MAX_HEIGHT 100
#define MAX_WIDTH 100

// Struct definition for representing a maze
typedef struct {
    char layout[MAX_HEIGHT][MAX_WIDTH]; // 2D array to store maze layout
    int height; // Height of the maze
    int width;  // Width of the maze
    int player_row; // Player's current row position
    int player_col; // Player's current column position
} Maze;

// Function prototypes
void load_maze(Maze *maze, const char *filename);
void display_map(const Maze *maze);
void move_player(Maze *maze, char direction);
int check_win_condition(const Maze *maze);

// Main function
int main(int argc, char *argv[]) {
    Maze maze; // Declare a Maze struct to hold maze information
    
    // Check if the correct number of command-line arguments are provided
    if (argc != 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    // Load maze from the file specified in the command-line argument
    load_maze(&maze, argv[1]);

    // Main game loop
    while (1) {
        char command;
        
        // ask the player for input
        printf("Enter your move (WASD or M to view map): ");
        scanf(" %c", &command);
        command = toupper(command); // Convert input to uppercase for case insensitivity

        // Handle the player input
        if (command == 'M') {
            // Display the map
            display_map(&maze);
        } else if (command == 'Q') {
            // Quit the game if 'Q' is entered
            break;
        } else {
            // Move the player and check win condition
            move_player(&maze, command);
            if (check_win_condition(&maze)) {
                printf("Congratulations! You have won!\n");
                break;
            }
        }
    }

    return 0;
}

// Function to load maze from file
void load_maze(Maze *maze, const char *filename) {
    // logic to read the maze from the file
    // Open the file specified by 'filename' for reading
    // Read the height and width of the maze from the file
    // Allocate memory for the maze structure based on the height and width
    // Read each character from the file and populate the maze array
    // Close the file once reading is complete
}

// Function to display the map with player's position
void display_map(const Maze *maze) {
    // Implement logic to display the maze with 'X' marking player's position
    // Loop through each cell in the maze
    // If the cell coordinates match the player's coordinates, print 'X'
    // Otherwise, print the character representing the cell (wall, path, start, or exit)
}

// Function to move the player within the maze
void move_player(Maze *maze, char direction) {
    // Implement logic to move the player based on input direction (WASD)
    // Determine the new coordinates of the player based on the direction
    // Check if the new coordinates are within the bounds of the maze and not a wall
    // If valid, update the player's position in the maze
}

// Function to check if the player has reached the exit
int check_win_condition(const Maze *maze) {
    // apply logic to check if the player's current position is at the exit
    // Check if the player's coordinates match the coordinates of the exit in the maze
    // If they match, return 1 , otherwise return 0
}





