//OOP ASSIGNMENT 2
//C15469578 DANIEL VEGERA
//////////////////////////

Player player;
MainMenu menu;
PFont title;
boolean play=false;



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
  title = loadFont("Italic-Bricks-120.vlw");
  
}//end Setup

boolean[] keys = new boolean[1000];

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void draw()
{
  background(0);
  menu.drawMenu();
  if(play)
  {
    player.updatePlayer();
    player.drawPlayer();
  }
  
  
}