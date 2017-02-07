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
     text("Move mouse left & right to move the paddle",width/2,height/3-100);
     text("Hit the bricks with the ball to complete the level",width/2,height/3);
     text("Collect powerups for different abilities/bonuses",width/2,height/3+100);
     text("Press 'O' in-game to go back to menu screen",width/2,height/3+200);
     
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
     
     //code to draw powerups and text
     noStroke();
     fill(100);
     rect(width/8,height/8,200,90,20);
     textFont(content,60);
     fill(13,252,10);
     text("SIZE+",width/8,height/8);
     textFont(content,30);
     fill(255);
     text("Increases width of the paddle",width/8,height/8+100);
     
     noStroke();
     fill(100);
     rect(width/8,height/2-75,200,90,20);
     textFont(content,60);
     fill(255,10,10);
     text("SIZE-",width/8,height/2-75);
     textFont(content,30);
     fill(255);
     text("Decreases width of paddle",width/8,height/2+25);
     text("(Best to avoid this)",width/8,height/2+75);
     
     noStroke();
     fill(100);
     rect(width/8,height/2+250,200,90,20);
     textFont(content,60);
     fill(10,255,10);
     text("1UP",width/8,height/2+250);
     textFont(content,30);
     fill(255);
     text("Gives you an extra life",width/8,height/2+350);
     
     noStroke();
     fill(100);
     rect(width-width/8,height/8,200,90,20);
     textFont(content,60);
     fill(250);
     text("SLOW",width-width/8,height/8);
     textFont(content,30);
     fill(255);
     text("Decreases speed of the ball",width-width/8,height/8+100);
     text("by (50%)",width-width/8,height/8+150);
     
     noStroke();
     fill(100);
     rect(width-width/8,height/2-75,200,90,20);
     textFont(content,60);
     fill(3,255,240);
     text("SPEED",width-width/8,height/2-75);
     textFont(content,30);
     fill(255);
     text("Increases speed of the ball",width-width/8,height/2+25);
     text("by (50%)",width-width/8,height/2+75);
  }
  
  
}//end class Controls