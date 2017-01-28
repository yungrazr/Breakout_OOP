class Player
{
  float x=width/2;
  float y=height-100;
  float playerW=200;
  float playerH=25;
  float playerSpeed=10;
  float curve=7;
  color c=color(250,28,28);
  
  void drawPlayer()
  {
    fill(c);
    noStroke();
    rect(x,y,playerW,playerH,curve);
    
  }
  
  void updatePlayer()
  {
    x=mouseX;
  }

}