class FileRead
{
  String filename;
  String str[];
  char character[];
  
  //method to read level in from text file
  //# means an empty space and @ means place a brick there 
  void readFile(String filename)
  {
    boolean level[][] = new boolean[16][12];
    str=loadStrings(filename);
    for(int i = 0; i < str.length; i++) 
    {
      String lines = str[i];
      for(int j = 0; j < lines.length(); j++) 
      {
        println(lines.charAt(j));
        if(lines.charAt(j)=='@')
        {
          level[j][i]=true;
        }
      }
    }
    planeArray=level;
    for (int x = 0; x < 16; x++) 
    {
      for (int y = 0; y < 12; y++) 
      {
        if(planeArray[x][y])
        {
          bricks.add(new Brick(new PVector(width / 16 * x, (height/2+200) / 12 * y)));
        }
      }
    }
  }
  
  //method to clear the bricks when switching between levels
  void clearLevel()
  {
    for (Brick brick: bricks)
    {
      brick.brickLife=0;
    }
  }
  
}