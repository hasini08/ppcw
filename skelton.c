#include <stdio.h>

// Struct definitions
typedef struct {
    int x;
    int y;
} Position;

typedef struct {
    char** grid;
    int width;
    int height;
    Position start;
    Position end;
    Position player;
} Maze;

// Function/procedure definitions
Maze* load_maze(const char* filename);
void free_maze(Maze* maze);
void print_maze(const Maze* maze);
void move_player(Maze* maze, char direction);
int is_game_over(const Maze* maze);

// A basic outline for your main
int main(int argc, char* argv[]) {
    // Check command line arguments
    if (argc != 2) {
        printf("Usage: %s <maze_file>\n", argv[0]);
        return 1;
    }

    // Load the maze
    Maze* maze = load_maze(argv[1]);
    if (!maze) {
        printf("Failed to load maze\n");
        return 1;
    }

    // Game loop
    while (!is_game_over(maze)) {
        print_maze(maze);
        char move = get_move();
        move_player(maze, move);
    }

    printf("Congratulations, you won!\n");

    // Clean up
    free_maze(maze);

    return 0;
}


