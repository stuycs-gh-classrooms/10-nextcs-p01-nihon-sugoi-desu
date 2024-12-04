class paddle{
  int x, y;
  int wid, hei;
  
  paddle(int x, int wid, int hei){
    this.x = x;
    y = 0;
    this.wid = wid;
    this.hei = hei;
  }
  
  void display(){
    rect(x, y, wid, hei);
  }
}
