class Player
{
  float x,y;
  float playerW;
  float playerH;
  float playerSpeed;
  float curve;
  color c;
  
  Player(float x, float y, float playerW,
  float playerH, float curve, color c)
  {
    this.x=x;
    this.y=y;
    this.playerW=playerW;
    this.playerH=playerH;
    this.curve=curve;
    this.c=c;
  }
  
}

void drawPlayer(float x, float y, float playerW,
float playerH, float curve, color c)
{
  fill(c);
  rect(x,y,x+playerW,y+playerH,curve);
  
}

void updatePlayer()
{
  Player.update();
}