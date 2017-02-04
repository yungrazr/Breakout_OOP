class GameOver
{
  float bWidth=300;
  float bHeight=100;
  float bWPos=width/2;
  float bHPos=(height/2+300);
  
  void drawGameOver()
  {
      textFont(title, 120);
      fill(255);
      text("Game over!",width/2,height/4);
      textFont(content,60);
      text("Your final score: " + gameui.score,width/2,height/2);
      
      
     drawButton(bWPos,bHPos,bWidth,bHeight,2,"MENU",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          gameover=false;
          main=true;
          gameui.lives=3;
          cooldown=20;
          //brings you back to main menu
        }
     }
  }
  
  
  
  
  
}