class Brick
{
  float x;
  float y;
  float brickHeight=75;
  float brickWidth=150;
  int bricklife = 1;
  color brickC = color(random(100,255),random(100,255),random(100,255));
  
  void drawBrick()
  {
    fill(brickC);
    rectMode(CORNER);
    rect(x,y,brickWidth,brickHeight);
    rectMode(CENTER);
  }//end drawBrick
  
  
  
  
}