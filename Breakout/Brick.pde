class Brick {
  int x, y; // Top-left corner of the brick
  int w, h; 
  color brickColor;
  boolean visible; // Whether the brick is still visible
  int cols; 
  int gap;

  // Constructor
  Brick(int x, int y, int cols) {  //feels very awkward adding another parameter just for a minor detail
    this.x = x;
    this.y = y;
    this.cols = cols;

    gap = int(random(4, 12)); //randomized spacing, the semi-orderness of the og freaks me out
    if ((gap + this.x) < width){
          this.x += gap; 
        }

    // Randomize width and height
    this.w = int(random(50, (width / cols)-gap)); 
    this.h = int(random(20, 40)); //looks weird with the height randomized too
    
    // Randomize color
   this.brickColor = color(random(255), random(255), random(255));
    
   this.visible = true; // Start with the brick visible
   

  }

  // Display the brick
  void display() {
    fill(brickColor);
    stroke(200); 
    rect(x, y, w, h); //maybe for extra feautres add random value to h and hurt their eyes really bad
  }
}
