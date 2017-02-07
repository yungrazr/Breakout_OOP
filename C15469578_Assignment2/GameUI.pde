class GameUI
{
  int lives = 3;
  int score = 0;
  int pType = 0;
  
  void drawUI()
  {
    delta=millis()-startTime-resetTime;
    player.updatePlayer();
    player.drawPlayer();
    ball.updateBall();
    ball.drawBall();
    for (Brick b : bricks) 
    {
     b.updateBrick();
     b.drawBrick();
    }
    powerup.drawPowerUp();
    powerup.updatePowerUp();
    textFont(content,30);
    fill(255);
    textAlign(LEFT,CENTER);
    text("Lives: " + lives,20,30);
    text("Score: " + score,150,30);
    text("Time: " + round(delta/1000),325,30);
    textAlign(CENTER,CENTER);
    
    if(keyPressed)
    {
      if(key=='o' || key=='O')
      {
        cooldown=20;
        main=true;
        play=false;
        resetTime=millis();
      }
      
    }
 
  }
 
}