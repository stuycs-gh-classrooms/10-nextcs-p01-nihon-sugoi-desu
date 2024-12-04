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
}

void draw() {
  background(0);
  
  grid.display();
  p.display();
  b.display(); //error prob due to not checking if index of array is null
}
