
//Add if bricks[i][j] != null to everything

// some basic work on grid class ~ Koi
//Not bad code just not conventional ... 

Grid grid;  
paddle p;
ball b;

void setup() {
  size(800, 600); 

  int rows = 5;
  int cols = 10; 
  
  grid = new Grid(rows, cols);
  p = new paddle(300, 200, 20);
  b = new ball(400, 500, 20);
}

void draw() {
  background(0);
  
  grid.collisionCheck(b);
  grid.display();
  p.display();
  b.display(); //error prob due to not checking if index of array is null

}

void keyPressed(){
    if (keyCode == LEFT){
      p.x -= 10;
    }
    if (keyCode == RIGHT)  {
      p.x += 10;
    }
    if (key == ' '){
      if (b.speedY == 0 && b.speedX == 0){
        b.speedY = 3;
        b.speedX = 0;
        
      }
      else{
        b.speedY = 0;
        b.speedX = 0;
      }
      
    }
}
