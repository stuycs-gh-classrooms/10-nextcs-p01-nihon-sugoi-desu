class paddle {
  int x, y;
  int wid, hei;
  int pMidX, pMidY;

  paddle(int x, int wid, int hei) {
    this.x = x;
    y = height-20;
    this.wid = wid;
    this.hei = hei;
    pMidX = (2*(this.x) + this.wid)/2;
    pMidY = (2*(this.y) + this.hei)/2;
  }

  void display() {
    if (play == false) {
       pMidX = (2*(this.x) + this.wid)/2;
      pMidY = (2*(this.y) + this.hei)/2;

      x = mouseX;
    }
    rect(x, y, wid, hei);
  }
}
