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
LevelSelect levelselect;
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
  //bricks.add(new Brick(new PVector(width/2, height/2)));
  title = loadFont("Italic-Bricks-120.vlw");
  content = loadFont("Arial-BoldItalicMT-60.vlw");
  preview[0] = loadImage("prev1.jpg");
  preview[1] = loadImage("prev2.jpg");
  
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