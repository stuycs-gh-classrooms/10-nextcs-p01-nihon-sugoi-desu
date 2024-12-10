
//Add if bricks[i][j] != null to everything

//problems: speedX and speedY might be overwritten by other methods/functions, ball not colliding with anything

Grid grid;
paddle p;
ball b;
boolean pause; //play as in whether the game is paused or not, rlly confusing but a real hassle to change
int rows, cols;

void setup() {
  size(800, 600);
  stroke(255);

  rows = 5;
  cols = 10;

  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);

  pause = false;
}

void draw() {

  background(0);
  grid.collisionCheck(b);

  grid.display();
  p.display();
  b.bounce(p);
  b.display(); //error prob due to not checking if index of array is null
}

void keyPressed() {
  if (pause == false) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        p.x -= 25;
      }
      if (keyCode == RIGHT) {
        p.x += 25;
      }
    }
  }
  if (key == ' ') {

    if (pause == true) {
      pause = false;
    } else {
      pause = true;
    }
  }

  if (key == 'r') {
    reset();
  }
}



void reset() {
  rows = 5;
  cols = 10;

  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);
  pause = false;
}
