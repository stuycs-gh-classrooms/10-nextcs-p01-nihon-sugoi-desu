PImage heart;
Grid grid;
paddle p;
ball b;
boolean pause; 
int rows, cols;
int lives;

void setup() {
  size(800, 600);
  stroke(255);

// Load a heart image for the lives counter
  heart = loadImage("asset/heart.png");
  heart.resize(40, 40); // Resize to fit the display
  
  rows = 5;
  cols = 10;

  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);

  pause = true;
  lives = 3;
}

void draw() {
  if (lives > 0) { 
     background(0);
    // Display lives as hearts
    for (int i = 0; i < lives; i++) {
      image(heart, i * 50, 10);
    }

    grid.collisionCheck(b);
    grid.display();
    p.display();
    b.bounce(p);
    b.display();
  } else {
    // Game over screen
    background(0);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(50);
    text("YOU LOSE! Press R to restart", width / 2, height / 2);
    
    // Check for key press to reset the game
    if (keyPressed && key == 'r') {
      hardReset();  // Reset the game when 'r' is pressed
    }
  }
}


void keyPressed() {
  if (key == ' ') {  // Spacebar toggles pause state
    pause = !pause; // Toggle pause state
  }

  if (!pause) {  // Only move the paddle if the game is not paused
    if (keyCode == LEFT) {
      p.x -= 50;
    }
    if (keyCode == RIGHT) {
      p.x += 50;
    }
    p.x = constrain(p.x, 0, width - p.wid); // Constrain paddle within the screen
  }

  if (key == 'r') {  // Reset the game when 'r' is pressed
    hardReset();
  }
}


void mouseMoved() {
  p.x = mouseX - p.wid/2;
  p.x = constrain(p.x, 0, width - p.wid); // Constrain paddle within the screen
}

void reset() {
  rows = 5;
  cols = 10;

  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);
  pause = true;
} //Does not reset lives nor grid

void hardReset() {
  // Reset all game variables to their initial states
  p = new paddle(300, 200, 20);  // Reset paddle
  b = new ball(400, 500, 20);    // Reset ball
  grid = new Grid(rows, cols);   // Reset the grid
  lives = 3;                     // Reset lives
  pause = false;                 // Unpause the game to start fresh
}
