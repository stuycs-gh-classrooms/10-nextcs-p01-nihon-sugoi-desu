class Grid {
  int rows, cols;
  Brick[][] bricks;


  Grid(int rows, int cols) {
    this.rows = rows;
    this.cols = cols;

    // Initialize the bricks grid
    bricks = new Brick[rows][cols];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int x = j * (width / cols); // x position of the brick
        int y = i * 40 + 50; // y position of the brick (+50 for padding)
        bricks[i][j] = new Brick(x, y, cols);
      }
    }
  } // Constructor

  void collisionCheck(ball b) {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j] != null) {
          if (b.collisionCheck(bricks[i][j].midX, bricks[i][j].midY, b.cx, b.cy, bricks[i][j].w, bricks[i][j].h)) {

            if (b.cy >= bricks[i][j].y && b.cy <= bricks[i][j].y + bricks[i][j].h) {
              b.speedX *= -1;
              bricks[i][j] = null;
              } // if ball hits flanks, then bounce X vector 
            else {
              b.speedY *= -1;
              bricks[i][j] = null;
            }  // if ball hits top/down, then bounce Y vector
            
          } //collision confirmation
        } //checks if Brick exists
      }
    }
  } //Collision Check


  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j] != null) {
          bricks[i][j].display();
        }
      }
    }
  }   // Display all bricks
}
