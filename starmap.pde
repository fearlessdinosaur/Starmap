/* 
name:David Fox
SN:C15436172
Date:08/11/2016
*/
 Table table;
 ArrayList<Star> star = new ArrayList<Star>();
 float i;
 float j;
 int count;
void setup()
{
  size(800,800);
  table=loadTable("stars.csv","header");
  count=table.getRowCount();
  loadData();
  printStar();
  noFill();

}

void draw()
{
  background(0);
  stroke(255);
  for(i=50;i<width;i +=70)
  {
    line(50,i,750,i);
  }
  for(i=50;i<width;i +=70)
  {
    line(i,50,i,750);
  }
  plotStar();
  
}

void loadData()
{
      for(TableRow row :table.rows())
  {
    String hab=row.getString("Hab?");
    String displayName=row.getString("Display Name");
    float distance=row.getInt("Distance");
    float xg=row.getInt("Xg");
    float yg=row.getInt("Yg");
    float zg=row.getInt("Zg");
    float absMag=row.getInt("AbsMag");
    
    
    star.add(new Star(hab,displayName,distance,xg,yg,zg,absMag));
    
   

  }
}
void printStar()
{
  for (Star part : star) 
  {
    part.display();//acts as tostring method
  }
}

void plotStar()
{    
  
  for (Star part : star) 
  {
    stroke(255,255,0);
    float x= map(part.x,-5,5,0,800);
    float y= map(part.y,-5,5,0,800);
    line(x-4,y,x+4,y);
    line(x,y-4,x,y+4);
    stroke(255,0,0);
    ellipse(x,y,part.sizeM,part.sizeM);
    textAlign(LEFT,CENTER);
    text(part.name,x+(part.sizeM/2),y-10);
    
  }
}