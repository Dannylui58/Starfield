Particle [] space = new Particle[5000];
void setup()
{
  size (1000,1000);
  for (int i = 0; i < space.length;i++){
    space[i] = new Particle();
  }
  for (int i = 0; i < 1;i++){
    space[i] = new OddballParticle();
  }
  //your code here
}
void draw()
{
  background(77,144,237);
  for (int i = 0; i < space.length; i++){
    space[i].show();
    space[i].fly();
  }
  //your code here
}
class Particle{
float r = 0;
double myX,myY,myX2,myY2,myAngle,mySpeed;
int myColor;
  Particle()
  {
    myX = Math.random()/5+499.9;
    myY = Math.random()/5+499.9;
    myColor = color(255);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()/4.11+.005;
  }

  //your code here

  
    void show(){
      stroke (myColor);
      strokeWeight(((int)(Math.random()*5)+1));
      line((float)(myX-Math.cos(myAngle)*mySpeed*r),(float)(myY-Math.sin(myAngle)*mySpeed*r),(float)myX,(float)myY);//your code here
    }
    void fly(){
  r=sqrt((float)((myX-500)*(myX-500)+(myY-500)*(myY-500)));
  myX+=Math.cos(myAngle)*mySpeed*r;
  myY+=Math.sin(myAngle)*mySpeed*r;
  if (myX>1050||myY>1050||myX<-50||myY<-50){
    myAngle=Math.random()*2*Math.PI;
    r=0;
    myX=Math.random()/100+499.995;
    myY=Math.random()/100+499.995;}

    }
  }
  class OddballParticle extends Particle//inherits from Particle
  {
    OddballParticle(){
      myY = Math.random()/5+499.9;
      myX = Math.random()/5+499.9;
      myColor = color(0);
      myAngle = Math.random()*Math.PI;
      mySpeed = Math.random()/4.11+.0025;
    //your code here
  }
  }
