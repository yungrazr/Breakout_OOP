//OOP ASSIGNMENT 2
//BREAKOUT GAME
//C15469578 DANIEL VEGERA
//////////////////////////

import java.util.*;

Player player;
MainMenu menu;
Controls controls;
Ball ball;
GameOver game;
GameUI gameui;
Brick brick;
PFont title;
PFont content;
boolean main=true;
boolean control=false;
boolean play=false;
boolean release=false;
boolean gameover=false;
int cooldown=20;
List<Brick> bricks = new ArrayList<Brick>();

///////////////////////////////

void setup()
{
  fullScreen();
  frameRate(60);
  rectMode(CENTER);
  ellipseMode(CENTER);
  textAlign(CENTER,CENTER);
  
  player = new Player();
  menu = new MainMenu();
  gameui = new GameUI();
  controls = new Controls();
  ball = new Ball();
  game = new GameOver();
  //bricks.add(new Brick(new PVector(width/2, height/2)));
  for (int x = 0; x < 10; x++) 
  {
    for (int y = 0; y < 10; y++) 
    {
      bricks.add(new Brick(new PVector(width / 10 * x, height / 10 * y)));
    }
  }
  title = loadFont("Italic-Bricks-120.vlw");
  content = loadFont("Arial-BoldItalicMT-60.vlw");
  
}

void draw()
{
  background(0);
  if(main) {
    cursor();
    menu.drawMenu();
  }
  
  if(gameover)
  {
    cursor();
    game.drawGameOver();
  }
  
  if(play) {
    cooldown--;
    noCursor();
    gameui.drawUI();
  }
  
  if(control) {
    cursor();
    controls.drawControls();
  }
  
  
}