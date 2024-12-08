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
        //Don't think need != null here but highly suspect
        int x = j * (width / cols); // x position of the brick
        int y = i * 40 + 50; // y position of the brick (+50 for padding)
        bricks[i][j] = new Brick(x, y, cols);
      }
    }
  }

  void collisionCheck(ball b) { //so many issues with collision check: Brick dissapear on start and only at the start and unpreditacbly and when the ball is far away, Bad checking code, maybe convert to return bool function instead? 
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j] != null) {
          if (b.collisionCheck(bricks[i][j].midX, bricks[i][j].midY, b.cx, b.cy, bricks[i][j].w, bricks[i][j].h)){
            bricks[i][j] = null;
            b.speedX *= -1;
            b.speedY *= -1;
          }
            
      }
      }
    }
  }

  // Display all bricks
  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j] != null) {
          bricks[i][j].display();
        }
      }
    }
  }
}
