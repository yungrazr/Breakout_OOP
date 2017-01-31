class Brick
{
  PVector position = new PVector(0, 0);
  float brickHeight = 40;
  float brickWidth = 110;
  int brickLife = 1;
  color [] brickColor = { color(234,24,24), color(94,28,234),
  color(26,234,24), color(252,143,8), color(244,252,8) };
  int c = brickColor[(int)random(0,5)];
  
  Brick(PVector p) {
   this.position = p; 
  }
  
  void drawBrick()
  {
    if(brickLife>0)
    {
      fill(c);
      rectMode(CORNER);
      rect(position.x,position.y,brickWidth,brickHeight);
      rectMode(CENTER);
    }
  }//end drawBrick
  
  void updateBrick()
  {
    if(brickLife>0)
    {
      if(ball.position.x+(ball.radius/2) > position.x && ball.position.x-(ball.radius/2) < position.x+brickWidth)
      {
        if(ball.position.y+(ball.radius/2) > position.y && ball.position.y-(ball.radius/2) < position.y+brickHeight)
        {
          

          ball.velocity.y*=-1;
          brickLife=-1;
          gameui.score+=10;
          
          //reverse y direction of ball when hitting brick
        }
      }
    }
  }
  
}