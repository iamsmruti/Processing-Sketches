// This is Simple Pendulum doing nothing but swinging 
// 


class SimplePendulum{
  PVector pos;
  PVector origin;
  
  float angle;
  float aVel;
  float aAcc;
  
  float length;
  
  SimplePendulum(PVector o, float len, float a){
    origin = o;
    pos = new PVector( width/2, height/2);
    
    angle = a;
    length = len;
  }
  
  void go(){
    fill(244, 0, 0);
    line(origin.x, origin.y, pos.x, pos.y);
    ellipse(pos.x, pos.y, 60, 60);
    
    pos.x = origin.x + length*sin(angle);
    pos.y = origin.y + length*cos(angle);
    
    aAcc = -0.01 * sin(angle);
    
    angle += aVel; 
    aVel += aAcc;
    
    aVel = aVel * 0.99;
  }
}
