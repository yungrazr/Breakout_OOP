class Player
{
  PVector position = new PVector(width/2, height-100);
  float playerW = 200;
  float playerH = 30;
  float playerSpeed = 10;
  float curve = 7;
  color c=color(250,28,28);
  
  
  void drawPlayer()
  {
    fill(c);
    noStroke();
    rect(position.x,position.y,playerW,playerH,curve);
    
  }
  
  void updatePlayer()
  {
    position.x=mouseX;
    
    //if statements to sort out powerups
    if(gameui.pType==1)//size+
    {
      playerW=275;
    }
    if(gameui.pType==2)//size-
    {
      playerW=100;
    }
    if(gameui.pType==3)//speed
    {
      
      if(ball.velocity.y<0)
      {
        ball.velocity.y=-9;
      }
      if(ball.velocity.y>0)
      {
        ball.velocity.y=9;
      }
      

    }
    if(gameui.pType==4)//slow
    {
      
      if(ball.velocity.y<0)
      {
        ball.velocity.y=-3;
      }
      if(ball.velocity.y>0)
      {
        ball.velocity.y=3;
      }

    }
    if(gameui.pType==5)//1up
    {
      gameui.lives+=1;
      gameui.pType=0;

    }
  }

}