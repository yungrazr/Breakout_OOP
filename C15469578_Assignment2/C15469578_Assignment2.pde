//OOP ASSIGNMENT 2
//BREAKOUT GAME
//C15469578 DANIEL VEGERA
//////////////////////////

import java.util.*;
import ddf.minim.*;

Player player;
MainMenu menu;
Controls controls;
Ball ball;
GameOver game;
GameUI gameui;
Brick brick;
FileRead fileread;
LevelSelect levelselect;
Minim minim;
PFont title;
PFont content;
PImage preview[] = new PImage[5];

boolean main=true;
boolean control=false;
boolean play=false;
boolean release=false;
boolean gameover=false;
boolean lvlsel=false;
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
  imageMode(CENTER);
  textAlign(CENTER,CENTER);
  player = new Player();
  menu = new MainMenu();
  gameui = new GameUI();
  controls = new Controls();
  ball = new Ball();
  game = new GameOver();
  levelselect = new LevelSelect();
  fileread = new FileRead();
  minim = new Minim(this);
  title = loadFont("Italic-Bricks-120.vlw");
  content = loadFont("Arial-BoldItalicMT-60.vlw");
  preview[0] = loadImage("prev1.jpg");
  preview[1] = loadImage("prev2.jpg");
  preview[2] = loadImage("prev3.jpg");
  preview[3] = loadImage("prev4.jpg");
  preview[4] = loadImage("prev5.jpg");
  
}

void draw()
{
  background(0);
  if(main) {
    cursor();
    menu.drawMenu();
  }
  
  if(lvlsel)
  {
    cursor();
    levelselect.drawLevelSelect();
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