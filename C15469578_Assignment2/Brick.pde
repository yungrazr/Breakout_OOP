class Brick
{
  PVector position = new PVector(0, 0);
  float brickHeight = 50;
  float brickWidth = 110;
  int brickLife = 1;
  color [] brickColor = { color(234,24,24), color(94,28,234),
  color(26,234,24), color(252,143,8), color(244,252,8), color(13,252,10), color(5,240,250) };
  int c = brickColor[(int)random(0,7)];
  
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
      stroke(0);
      noFill();
      rect(position.x+5,position.y+5,brickWidth-10,brickHeight-10,10);
      rectMode(CENTER);
    }
  }//end drawBrick
  
  void updateBrick()
  {
    if(brickLife>0)
    {
      if(ball.position.x+(ball.radius/2) > position.x && ball.position.x-(ball.radius/2) < position.x+brickWidth &&
      ball.position.y+(ball.radius/2) > position.y && ball.position.y-(ball.radius/2) < position.y+brickHeight)
      {
        /*
          if((ball.position.y+(ball.radius/2) > position.y || ball.position.y-(ball.radius/2) < position.y+brickHeight) 
          && ball.position.x+(ball.radius/2) > position.x && ball.position.x-(ball.radius/2) < position.x+brickWidth)
          {
            ball.velocity.x*=-1;
          }
          
          if((ball.position.x+(ball.radius/2) > position.x || ball.position.x-(ball.radius/2) < position.x+brickWidth) 
          && ball.position.y+(ball.radius/2) > position.y && ball.position.y-(ball.radius/2) < position.y+brickHeight)
          {
            ball.velocity.x*=-1;
          }
          */
          ball.velocity.y*=-1;
          brickLife=-1;
          gameui.score+=10;
      }
    }
  }
  
}