[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Name0: Koi
### Name1: Clayton
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Arkanoid

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- separate classes for grid, paddle, and ball
- collision - check for collision with 1) grid 2) paddle 3) 3 sides 4) bottom
- life - game start/game over
-reset and pause function
 
 ``` 
 grid{
 in x,y;
int width, height;

   grid(x, y){}

   void collision{

if ball.x >= grid[][].x && <= grid[][].x + width {
disappear 
    if ball.y >= grid[][].y && <= grid[][].y + height{
disappear }
   }
 }
} //use upper-left corner of irregular sized rect and circles



 paddle{
  int x,y;
   paddle(x, y)
 }



 ball {
  speed variables

  ball(x, y, speeds){}

  void Bounce(){
    Change speed and direction of ball upon collision 
}

  
 }
 ```

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.
- hearts to signify how many lives you have 

### Array Usage
How will you be using arrays in this project?

1D Array:
Looping through each array of the 2D array individually?

2D Array:
Store the grid objects


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
r - reset
space - to continue after lose life

Mouse Control:
- Mouse movement: Paddle follows Xmouse
- Mouse pressed: Left and right keys


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS grid
- Instance variables:
  - x, y
- METHODS
  - collision

CLASS ball
- Instance variables:
  - x, y, xspeedLR, yspeedUD
- METHODS
  - bounce
 
CLASS paddle
- Instance variables:
  - x, y
