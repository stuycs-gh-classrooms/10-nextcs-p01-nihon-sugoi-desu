class paddle {
  int x, y;
  int wid, hei;
  int pMidX, pMidY;
  int pastX, currentX;
  float speed;

  paddle(int x, int wid, int hei) {
    this.x = x;
    y = height-20;
    this.wid = wid;
    this.hei = hei;
    pMidX = (2*(this.x) + this.wid)/2;
    pMidY = (2*(this.y) + this.hei)/2;
    pastX = x;
    currentX = x;
  } //contructor

  void display() {
    if (pause == false) {
      pMidX = (2*(this.x) + this.wid)/2;
      pMidY = (2*(this.y) + this.hei)/2;

    }
    fill(230);
    rect(x, y, wid, hei);


    if (frameCount % 6 == 0) {
      speed = dist(pastX, 0, currentX, 0)/frameRate;
      pastX = currentX;
      currentX = x;
    } //keeps track of past and current x position to calculate velocity 
  }//display paddle
}
