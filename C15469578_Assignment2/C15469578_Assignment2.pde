//OOP ASSIGNMENT 2
//BREAKOUT GAME
//C15469578 DANIEL VEGERA
//////////////////////////

import java.util.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Player player;
MainMenu menu;
Controls controls;
Ball ball;
GameOver game;
GameUI gameui;
Brick brick;
FileRead fileread;
PFont title;
PFont content;
boolean main=true;
boolean control=false;
boolean play=false;
boolean release=false;
boolean gameover=false;
int cooldown=20;
List<Brick> bricks = new ArrayList<Brick>();
List<boolean[][]> levels = new ArrayList<boolean[][]>();
boolean planeArray[][] = new boolean[16][12];

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
  fileread = new FileRead();
  fileread.readFile("lvl1.txt");
  //bricks.add(new Brick(new PVector(width/2, height/2)));
  for (int x = 0; x < 16; x++) 
  {
    for (int y = 0; y < 12; y++) 
    {
      if(planeArray[x][y])
      {
        bricks.add(new Brick(new PVector(width / 16 * x, (height/2+200) / 12 * y)));
      }
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