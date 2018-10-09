 Bacteria[] OOF;
 int x = 0;
 int Center = 500;
int Moving = 1;
void setup()
{
  frameRate(500);
  background(210,180,140);
  size(1000,1000);
   OOF = new Bacteria[1];
   for (int i = 0; i < OOF.length;i++)
  {
    OOF[i] = new Bacteria();
  }
}
void draw()
{
  for (int i = 0;i < OOF.length;i++)
  {
    if (Moving == 0)
    {
      OOF[i].show();
  OOF[i].oof();
      }
    if (Moving == 1)
    {
    OOF[i].walk();
    OOF[i].show();
    //OOF[i].reset();
    }
    }
  }

void mousePressed()
{
  //ll(0);
   //lipse((float)(mouseX),(float)(mouseY),30,30);
   //ll(255);
   //xtSize(1);
  //xt("Bait",mouseX+2,mouseY+2);
  Moving = 0;
}
void mouseReleased()
{
  Moving = 1;
}

class Bacteria
{
  float myX,myY;
  int Random = (int)(Math.random()*4);
  int Move = 1;
  Bacteria()
  {
    myX = myY = 500;
  }
  void walk()
  {
  {
    if (Move == 1){
    myX = myX + (float)(Math.random()*20-10);
    myY = myY + (float)(Math.random()*20-10);
    }
  }
  if (myX < 0)
  {
    myX = 10;
  }
  if (myY < 0)
  {
    myY = 10;
  }
  if (myY > 1000)
  {
    myY = 990;
  }
  if (myX > 1000)
  {
    myX = 990;
  }
}
  
  void show()
  {
    fill(random(255),random(255),random(255));
    ellipse(myX,myY,10,10);
  }
  void reset()
  {
    int Distance = (int)(dist(myX,myY,500,500));
     if (Distance < 50)
  {
    background(0);
    Random = (int)(Math.random()*4);
     if (Random == 0)
    {
      myX = myY = 0;
    }
    if (Random == 1)
    {
      myX = 0;
      myY = 1000;
    }
    if (Random == 2)
    {
      myX = 1000;
      myY = 0;
    }
    if (Random == 3)
    {
      myX = myY = 1000;
    }
  }
  }
  void oof()
{
  if (myX < mouseX)
  {
      myX = myX + (float)(Math.random()*5);
  }
  else 
  {
    myX = myX - (float)(Math.random()*5);
    }
    if (myY < mouseY)
    {
      myY = myY + (float)(Math.random()*5);
    }
    else
    {
      myY = myY - (float)(Math.random()*5);
    }
  }
}  