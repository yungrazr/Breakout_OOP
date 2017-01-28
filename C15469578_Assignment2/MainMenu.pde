class MainMenu
{
  float bWidth=300;
  float bHeight=100;
  float bWPos=width/2;
  
  float bHPos1=height/2;
  float bHPos2=(height/2+150);
  float bHPos3=(height/2+300);
  
  
  
  
  void drawMenu()
  {
    background(0);
    
     textFont(title, 120);
     fill(255);
     text("Breakout",width/2,height/4);
     
     drawButton(bWPos,bHPos1,bWidth,bHeight,2,"PLAY!",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos1-bHeight/2 && mouseY<bHPos1+bHeight/2)
        {
          main=false;
          play=true;
          //move onto game
        }
     }
     drawButton(bWPos,bHPos2,bWidth,bHeight,2,"CONTROLS",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos2-bHeight/2 && mouseY<bHPos2+bHeight/2)
        {
          main=false;
          control=true;
          //move to controls page
        }
     }
     drawButton(bWPos,bHPos3,bWidth,bHeight,2,"QUIT",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos3-bHeight/2 && mouseY<bHPos3+bHeight/2)
        {
          exit();
          //exit the game
        }
     }
  }
  
}//end class MainMenu