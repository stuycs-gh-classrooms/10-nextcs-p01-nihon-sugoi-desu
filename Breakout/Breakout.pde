
Grid grid;
paddle p;
ball b;
boolean pause; 
int rows, cols;
int lives;

void setup() {
  size(800, 600);
  stroke(255);

  rows = 5;
  cols = 10;

  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);

  pause = true;
  lives = 5;
}

void draw() {

  background(0);
  fill(130, 255, 240);
  textAlign(TOP, LEFT);
  textSize(50);
  text("Lives:" + lives, 0, LEFT);
  
  grid.collisionCheck(b);
  grid.display();
  p.display();
  b.bounce(p);
  b.display(); 
}

void keyPressed() {
  if (pause == false) { 
      if (keyCode == LEFT) {
        p.x -= 50;
      }
      if (keyCode == RIGHT) {
        p.x += 50;
      }
  } //keyboard event for paddle
  if (key == ' ') {

    if (pause == true) {
      pause = false;
    } else {
      pause = true;
    }
  } //pause and play game

  if (key == 'r') {
    hardReset();
  }
} 

void mouseMoved(){
  p.x = mouseX - p.wid/2;
} // mouse event for paddle



void reset() {
  rows = 5;
  cols = 10;

  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);
  pause = true;
} //Does not reset lives nor grid

void hardReset(){
  rows = 5;
  cols = 10;
  lives = 5;

  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);
  pause = true;
} //resets entire game
