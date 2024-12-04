class ball {
  int cx, cy;
  int speedX, speedY;
  int bsize;

  ball(int x, int y, int bsize) {
    cx = x;
    cy = y;
    this.bsize = bsize;

    speedX = 0;
    speedY = 1;
  }

  void bounce(paddle p) { //set and increase the speed in driver vroom vroom
    if (cx >= width - (bsize/2) || cx >= (bsize/2)) {
      speedX *= -1;
    }
    if (cy >= height - (bsize/2)){
      speedY *= -1;
    }
    
    if (cx <= p.x+p.wid+bsize/2 && cx >= p.x){ //paddle
      speedX *= -1;
    }
    if (cy >= p.y-p.hei){ //assuming paddle is on roomba mode and sits at max height
      speedY *= -1;
    }
  
    //brick collision addressed in grid class for some reason
    
  }
  
  void display(){
    circle(cx, cy, bsize);
  }
  
  
  //If bounce with bottom of screen, will address in Driver
}


/*    SELF REFEREFENCE FOR HOW THE BALLS BEHAVES WHEN IT COLLIDES
int Xspeed, Yspeed;
int x, y;
int rect1x, rect1y, rect1wid, rect1hei;

void setup(){
  size(700, 700);
  Xspeed = 7;
  Yspeed = 3;
  x = 100;
  y = 100;
  rect1x = 300;
  rect1y = 400;
  rect1wid = 200;
  rect1hei = 300;
}


void draw(){
  background(15);
  circle(x, y, 20);
  rect(rect1x, rect1y, rect1wid, rect1hei);
  if (x >= rect1x-10 && x <= rect1x+rect1wid - 10){
    Xspeed *= -1;
  }
  if (y >= rect1y-10 && y <= rect1y + rect1hei -10){
    Yspeed *= -1;
  }
  if (x <= 10 || x >= width -10){
    Xspeed *= -1;
  }
  if (y <= 10 || y >= height -10){
    Yspeed *= -1;
  }
  x += Xspeed;
  y += Yspeed;
}
*/
