class Player
{
  PVector position = new PVector(width/2, height-100);
  float playerW = 200;
  float playerH = 25;
  float playerSpeed = 10;
  float curve = 7;
  float powerup=0;
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
  }

}//end class Player