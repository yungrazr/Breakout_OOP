class Ball
{
  float x=mouseX;
  float y=height-120;
  float x2=0;
  float y2=0;
  float speed;
  float radius=25;
  float lives;
  float powerup;
  
  
  void drawBall()
  {
    fill(150);
    ellipse(x,y,radius,radius);
    
  }
  
  void updateBall()
  {
    if(x-radius/2<0)
    {
      x2=random(1, 5);
    }
    if(x+radius/2>width)
    {
      x2=random(-5, -1);
    }
    if(y-radius/2<0)
    {
      y2*=-1;
    }
    if(y+radius/2>height)
    {
      release=false;
      lives-=1;
    }
    
    if(x+(radius/2) > player.x-(player.playerW/2) && x-(radius/2) < player.x+(player.playerW/2))
    {
      if(y+radius/2>player.y)
      {
        y2*=-1;
      }
    }
    
    if(release==false)
    {
      x=mouseX;
      y=height-120;
    }
    else
    {
      x += x2;
      y += y2;
    }
    
    if (mousePressed == true) 
    {
      if(release==false)
      {
        release=true;
        y2 = -5;
        x2 = random(-10, 10);
      }
    }
    
  }
  
}//end class Ball