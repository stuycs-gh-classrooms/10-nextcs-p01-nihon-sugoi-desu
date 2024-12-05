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

  void collisionCheck(ball b) {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        //if (bricks[i][j] != null) {
          println("I EXIST");
          if (b.cx >= (bricks[i][j].x)-b.bsize/2 && b.cx <= (bricks[i][j].x + bricks[i][j].w) + b.bsize/2) {
              println("BAD CHILD");
            b.speedX *= -1;

            bricks[i][j] = null;
          }
          if (b.cy <= (bricks[i][j].y) - b.bsize/2 && b.cy >= (bricks[i][j].y + bricks[i][j].h) + b.bsize/2) {
            b.speedY *= -1;

            bricks[i][j] = null;
          //}
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
