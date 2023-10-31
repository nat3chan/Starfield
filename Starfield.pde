Particle [] space = new Particle [1100];
void setup()
{
  size(1000,1000);
  for (int i = 0; i < space.length; i++){
  space[i] = new Particle();
  }
  for (int i = 0; i < 100; i++){
  space[i] = new White();
  }
}
void draw()
{
  fill(0,0,0,75);
  rect(0,0,1000,1000);
  fill(255,255,255);
  for (int i = 0; i < space.length; i++){
  space[i].show();
  space[i].drift();
  }
}
void mousePressed()
{
  if(mouseButton == RIGHT)
  {
    for(int u = 0; u < space.length; u++)
    {
    if (space[u].myBlue == 52){
      space[u].myBlue=235;
    }
    else if (space[u].myBlue == 235){
      space[u].myBlue=52;
    }
  }
  }
 if(mouseButton == LEFT)
  {
    for(int i = 0; i < space.length; i++)
    {
      space[i].mySpeed*=-1;
    }
    redraw();
  } 
}
class Particle
{
    double myX, myY, myAngle, mySpeed, mySize, myGreen;
    color myRed, myBlue;
  Particle(){
    myX = 500;
    myY = 500;
    myBlue = 235;
    myGreen = 52;
    myRed = (int)(Math.random()*70)+160;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (int)(Math.random()*10)+1;
    mySize = 10;
}
  void drift(){
    myX = myX + Math.cos((float)myAngle)*mySpeed;
    myY = myY + Math.sin((float)myAngle)*mySpeed;
}
  void show(){
    fill(myRed,(int)myGreen,myBlue);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
class White extends Particle
{
  White(){
  myX = 500;
  myY = 500;
  myBlue = 255;
  myGreen = 255;
  myRed = 255;
  myAngle = (Math.random()*2)*Math.PI;
  mySpeed = (Math.random()*10)+1;
  mySize = 5;
}
}
