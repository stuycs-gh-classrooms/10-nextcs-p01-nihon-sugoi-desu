// some basic work on grid class ~ Koi

Grid grid; 

void setup() {
  size(800, 600); 

  int rows = 5;
  int cols = 10; 
  
  grid = new Grid(rows, cols);
}

void draw() {
  background(0);
  
  grid.display();
}

// The Grid class
class Grid {
  int rows, cols; 
  Brick[][] bricks; 

  // Constructor
  Grid(int rows, int cols) {
    this.rows = rows;
    this.cols = cols;

    // Initialize the bricks grid
    bricks = new Brick[rows][cols];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int x = j * (width / cols); // x position of the brick
        int y = i * 40 + 50; // y position of the brick (+50 for padding)
        bricks[i][j] = new Brick(x, y);
      }
    }
  }
/* COLLISIONCHECK should go somewhere here */ 

  // Display all bricks
  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j].visible) {
          bricks[i][j].display();
        }
      }
    }
  }
}


class Brick {
  int x, y; // Top-left corner of the brick
  int width, height; 
  color brickColor;
  boolean visible; // Whether the brick is still visible

  // Constructor
  Brick(int x, int y) {
    this.x = x;
    this.y = y;

    // Randomize width and height
    this.width = int(random(50, 100)); 
    this.height = int(random(20, 40)); 
    
    // Randomize color
   this.brickColor = color(random(255), random(255), random(255));
    
    this.visible = true; // Start with the brick visible
  }

  // Display the brick
  void display() {
    fill(brickColor);
    stroke(200); 
    rect(x, y, width, height);
  }
}
