class ball {
  int cx, cy;
  int speedX, speedY;
  int bsize;

  ball(int x, int y, int bsize) {
    cx = x;
    cy = y;
    this.bsize = bsize;

    speedX = (int)random(-10, 10);
    speedY = (int)random(-10, -1); 

    while (speedX == 0 || speedY == 0) {
      speedX = (int)random(-10, 10);
      speedY = (int)random(-10, -1); 
    } //make sure ball doesn't go straight line
  } //constructor

  boolean collisionCheck(int x1, int y1, int x2, int y2, int w, int h) {
    if ((dist(x1, 0, x2, 0) <= (w+bsize)/2) && (dist(0, y1, 0, y2) <= (bsize+h)/2)) {
      return true;
    }
    return false;
  } //check if ball has collided via distanced, reusable

  void bounce(paddle p) {
    if (collisionCheck(p.pMidX, p.pMidY, cx, cy, p.wid, p.hei)) {
      //println("p.Midx:" + p.pMidX);
      //println("p.Midy:" + p.pMidY);
      //println("cx:" + cx);
      //println("cy:" + cy);
      b.speedY *= -1;
      
      if (b.cy >= p.y) {
        b.speedX *= -1;
        if (b.cx <= p.pMidX) { 
          b.cx -= 20;
        } else {
          b.cx += 20;
        }
      } //have to manually move the ball back at the start because mouse moves too quickly

      if (speedX <= 0) {
        println("p.speed" + p.speed);
        speedX -= p.speed;
      } //add momentum from paddle to ball
      else {
        println("p.speed" + p.speed);
        speedX += p.speed;
      } //add momentum from paddle to ball
    }
    
    if ((cx + bsize/2 > width) || (cx - bsize/2 < 0)) {
      speedX *= -1; //bounce on walls
    }
    if (cy - bsize/2 <= 0) {
      speedY *= -1; //bounce on ceiling
    }
  } //bounce

  void display() {
  if (cy + bsize / 2 >= height) {  // Ball is out of bounds
    println("LOoSsE");
    println("cx when out:" + b.cx);
    println("cy when out" + b.cy);
    
    lives -= 1;  // Decrease lives
    if (lives > 0) {
      reset();  // Reset the game for next life
    } else {
      hardReset();  // Reset everything when lives run out
    }
  }  // when ball goes out of bounds

  if (!pause) {
    cx += speedX;
    cy -= speedY;
  }
  circle(cx, cy, bsize);  // Display the ball
}
}
