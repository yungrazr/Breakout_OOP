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
AudioSample special,hit,hit2,hit3;
AudioPlayer theme;
PowerUp powerup;
PFont title;
PFont content;
PImage preview[] = new PImage[5];
boolean main=true;
boolean control=false;
boolean play=false;
boolean release=false;
boolean gameover=false;
boolean lvlsel=false;
float delta=0;
float startTime=0;
float resetTime=0;
int cooldown=20;
List<Brick> bricks = new ArrayList<Brick>();
List<boolean[][]> levels = new ArrayList<boolean[][]>();
boolean planeArray[][] = new boolean[16][12];

///////////////////////////////

void setup()
{
  fullScreen(P2D);
  //size(1920,1080,P2D);
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
  powerup = new PowerUp();
  minim = new Minim(this);
  title = loadFont("Italic-Bricks-120.vlw");
  content = loadFont("Arial-BoldItalicMT-60.vlw");
  preview[0] = loadImage("prev1.jpg");
  preview[1] = loadImage("prev2.jpg");
  preview[2] = loadImage("prev3.jpg");
  preview[3] = loadImage("prev4.jpg");
  preview[4] = loadImage("prev5.jpg");
  hit = minim.loadSample("hit.wav", 512);
  hit2 = minim.loadSample("hit2.wav", 512);
  hit3 = minim.loadSample("hit2.wav", 512);
  special = minim.loadSample("powerup.wav", 512);
  theme = minim.loadFile("theme.mp3", 512);
  theme.setGain(-16);
  hit3.setGain(-24);
  theme.loop();
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
  
  if(play) 
  {
    cooldown--;
    noCursor();
    gameui.drawUI();
  }
  
  if(control) 
  {
    cursor();
    controls.drawControls();
  }
  println("FPS:" + frameRate);
}