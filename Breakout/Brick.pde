class Brick {
  int x, y; // Top-left corner of the brick
  int w, h; 
  color brickColor;
  int cols; 
  int gap;
  int midX, midY;

  // Constructor
  Brick(int x, int y, int cols) {  //feels very awkward adding another parameter just for a minor detail
    this.x = x;
    this.y = y;
    this.cols = cols;


    gap = int(random(4, 12)); 
    if ((gap + this.x) < width){
          this.x += gap; 
        } //changes the start point of the bricks sligtly

    this.w = int(random(50, (width / cols)-gap)); 
    this.h = int(random(20, 40));
 
   this.brickColor = color(random(255), random(255), random(255)); // Randomize color
   

  }

  // Display the brick
  void display() {
    midX = (x + x + w)/2;
    midY = (y + y + h)/2; 
    fill(brickColor);
    stroke(200); 
    rect(x, y, w, h);  
  }
}
