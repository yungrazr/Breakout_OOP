class FileRead
{
  String filename;
  String str[];
  char character[];
  
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
  }
  
  
  
  
  
  
}