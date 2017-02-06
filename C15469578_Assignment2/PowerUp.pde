class PowerUp
{
  PVector position = new PVector(random(200,width-200), -25);
  PVector velocity = new PVector(0,3);
  float pWidth=100;
  float pHeight=45;
  boolean powerup=false;
  int pType=(int)random(1,5);
  float lastPowerUp=20000;
  
  void drawPowerUp()
  {
    if(lastPowerUp<(delta-startTime-resetTime))
    {
      powerup=true;
    }
    
    if(powerup && pType==1)
    {
      noStroke();
      fill(100);
      rect(position.x,position.y,pWidth,pHeight,20);
      textFont(content,30);
      fill(13,252,10);
      text("SIZE+",position.x,position.y);
    }
    if(powerup && pType==2)
    {
      noStroke();
      fill(100);
      rect(position.x,position.y,pWidth,pHeight,20);
      textFont(content,30);
      fill(255,10,10);
      text("SIZE-",position.x,position.y);
    }
    if(powerup && pType==3)
    {
      noStroke();
      fill(100);
      rect(position.x,position.y,pWidth,pHeight,20);
      textFont(content,30);
      fill(3,255,240);
      text("SPEED",position.x,position.y);
    }
    if(powerup && pType==4)
    {
      noStroke();
      fill(100);
      rect(position.x,position.y,pWidth,pHeight,20);
      textFont(content,30);
      fill(0);
      text("SLOW",position.x,position.y);
    }
    if(powerup && pType==5)
    {
      noStroke();
      fill(100);
      rect(position.x,position.y,pWidth,pHeight,20);
      textFont(content,30);
      fill(255,10,10);
      text("1UP",position.x,position.y);
    }
    
  }
  
  void updatePowerUp()
  {
    if(powerup)
    {
      position.y+=velocity.y;
    }
    
    if(position.y>height)
    {
      powerup=false;
      position.y=-25;
      position.x=random(200,width-200);
      lastPowerUp+=20000;
    }
   
      
    
  }
  
}