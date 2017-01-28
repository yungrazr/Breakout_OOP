class Controls
{
  float bWidth=300;
  float bHeight=100;
  float bWPos=width/2;
  float bHPos=(height/2+300);
  
  
  void drawControls()
  {
     background(0);
     textFont(content,30);
     fill(255);
     text("Move mouse left & right to move the paddle",width/2,height/3);
     text("Hit the bricks with the ball to complete the level",width/2,height/3+100);
     text("Collect powerups for different abilities/bonuses",width/2,height/3+200);
     
     drawButton(bWPos,bHPos,bWidth,bHeight,2,"BACK",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          control=false;
          main=true;
          //brings you back to main menu
        }
     }
  }
  
  
}//end class Controls