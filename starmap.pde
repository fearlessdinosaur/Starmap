/* 
name:David Fox
SN:C15436172
Date:08/11/2016
*/
 Table table;
 Star star;
void setup()
{
  size(800,800);
  table=loadTable("stars.csv","header");
    for(TableRow row :table.rows())
  {
    String hab=row.getString("Hab?");
    String displayName=row.getString("Display Name");
    float distance=row.getInt("Distance");
    float xg=row.getInt("Xg");
    float yg=row.getInt("Yg");
    float zg=row.getInt("Zg");
    float absMag=row.getInt("AbsMag");
    
    star= new Star(hab,displayName,distance,xg,yg,zg,absMag);
    star.display();

  }
}

void draw()
{
  
  
}