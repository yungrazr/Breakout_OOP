class GameUI
{
  int lives = 3;
  int powerup = 0;
  int score = 0;
  
  void drawUI()
  {
    textFont(content,30);
    fill(255);
    text("Lives: " + lives,100,30);
    text("Score: " + score,250,30);
    
    player.updatePlayer();
    player.drawPlayer();
    ball.updateBall();
    ball.drawBall();
    for (Brick b : bricks) 
    {
     b.updateBrick();
     b.drawBrick();
    }
    
    
    
    
    
  }

  
  
  
  
}