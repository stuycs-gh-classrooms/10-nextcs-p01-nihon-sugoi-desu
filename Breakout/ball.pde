class ball {
  int cx, cy;
  int speedX, speedY;
  int bsize;
  int storeX, storeY;

  ball(int x, int y, int bsize) {
    cx = x;
    cy = y;
    this.bsize = bsize;

    speedX = (int)random(-10, 10);
    speedY = (int)random(-10, -1);

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
    println(b.cx);
    println(b.cy);
  }
  
  }
  //collisionCheck(p.pMidX, p.pMidY, cx, cy, p.wid, p.hei)
  
  void display(){
    if (pause == false){
      cx += speedX;
      cy -= speedY;
    //storeX = speedX;
    //storeY = speedY * -1;
    }
    circle(cx, cy, bsize);
    
  }
  
  
  //If bounce with bottom of screen, will address in Driver
}
