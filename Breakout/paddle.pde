class paddle{
  int x, y;
  int wid, hei;
  
  paddle(int x, int wid, int hei){
    this.x = x;
    y = height-20;
    this.wid = wid;
    this.hei = hei;
  }
  
  void display(){
    rect(mouseX-wid/2, y, wid, hei);
  }
}
