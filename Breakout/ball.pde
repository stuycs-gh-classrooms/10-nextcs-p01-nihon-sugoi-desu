class ball {
  int cx, cy;
  int speedX, speedY;
  int bsize;

  ball(int x, int y, int bsize) {
    cx = x;
    cy = y;
    this.bsize = bsize;

    speedX = 0;
    speedY = -1;
  }
  
  boolean collisionCheck(int x1, int y1, int x2, int y2, int w, int h){
    if ((dist(x1, 0, x2, 0) <= (w+bsize)/2) && (dist(0, y1, 0, y2) <= (bsize+h)/2)){
      return true;
    }
    return false;
  }
  
  void bounce(paddle p) { //set and increase the speed in driver vroom vroom
  if (collisionCheck(p.pMidX, p.pMidY, cx, cy, p.wid, p.hei)){
      println("p.x:" + p.pMidX);
      println("p.y:" + p.pMidY);
      println("cx:" + cx);
      println("cy:" + cy);
      speedY *= -1;
    }
    /*for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (bricks[i][j] != null){
          if (b.collisionCheck(bricks[i][j].midX, bricks[i][j].midY, b.cx, b.cy, bricks[i][j].w, bricks[i][j].h)){
            bricks[i][j] = null;
          }
        }
      }
    }*/
  if (cx + bsize/2 >= width){
    speedX *= -1;
  }
  if (cx - bsize/2 <= 0){
    speedX *= -1;
  }
  if (cy - bsize/2 <= 0){
  speedY *= -1;
  }
  if (cy + bsize/2 >= height){
    println("YOU LOSE!!!!!");
  }
  
  }
  //collisionCheck(p.pMidX, p.pMidY, cx, cy, p.wid, p.hei)
  
  void display(){
    cx += speedX;
    cy -= speedY;
    
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
