void setup()
{
  size(1280,720);
  frameRate(60);
  rectMode(CORNER);
  ellipseMode(CENTER);
  
}

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
  Player.update();
  drawPlayer(height
  
  
}