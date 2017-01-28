class MainMenu
{
  float bWidth=300;
  float bHeight=100;
  float bWPos=width/2;
  float bWPos2=width/2-325;
  float bWPos3=width/2+325;
  float bHPos=height/2;
  float x1=0;
  float y1=0;
  float x2=0;
  float y2=0;

 
  void drawMenu()
  {
    background(0);
    strokeWeight(4);
    
    
    //line animation around breakout title
    line(width/2-500,height/4-100,(width/2-500)+x1,height/4-100);
    if(((width/2)-500)+x1<(width/2)+500)
    {
      x1+=25;
    }
    line((width/2)+500,height/4-100,(width/2)+500,height/4-100+y1);
    if(height/4-100+y1<height/4+100)
    {
      y1+=5;
    }
    line(width/2+500,height/4+100,(width/2+500)-x2,height/4+100);
    if(((width/2)+500)-x2>(width/2)-500)
    {
      x2+=25;
    }
    line((width/2)-500,height/4+100,(width/2)-500,height/4+100-y2);
    if(height/4+100-y2>height/4-100)
    {
      y2+=5;
    }
    
    //title text
     strokeWeight(1);
     textFont(title, 120);
     fill(255);
     text("Breakout",width/2,height/4);
     
     //method calls for drawing buttons
     drawButton(bWPos,bHPos,bWidth,bHeight,2,"PLAY!",255);
     if(mousePressed)
     {
        if(mouseX>bWPos-bWidth/2 && mouseX<bWPos+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          main=false;
          play=true;
          //move onto game
        }
     }
     drawButton(bWPos2,bHPos,bWidth,bHeight,2,"CONTROLS",255);
     if(mousePressed)
     {
        if(mouseX>bWPos2-bWidth/2 && mouseX<bWPos2+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          main=false;
          control=true;
          //move to controls page
        }
     }
     drawButton(bWPos3,bHPos,bWidth,bHeight,2,"QUIT",255);
     if(mousePressed)
     {
        if(mouseX>bWPos3-bWidth/2 && mouseX<bWPos3+bWidth/2 && mouseY>bHPos-bHeight/2 && mouseY<bHPos+bHeight/2)
        {
          exit();
          //exit the game
        }
     }
  }
  
}//end class MainMenu