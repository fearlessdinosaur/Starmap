class Star
{
  String habit;
  String name;
  float dist;
  float x;
  float y;
  float z;
  float size;
  Star(String hab,String displayName,float distance,float xg,float yg,float zg,float absMag)
  {
    habit=hab;
    name=displayName;
    dist=distance;
    x=xg;
    y=yg;
    z=zg;
    size=absMag;
  }
  
  
  void display()
  {
    println(habit+","+name+","+dist+","+x+","+y+","+z+","+size);
    
  }
}