class DoublePendulum{
  PVector origin;
  PVector pos1;
  PVector pos2;
  PVector pos3;
  
  float angle1;
  float angle2;
  float angle3;
  
  float length;
  float aVel1;
  float aAcc1;
  
  float aVel2;
  float aAcc2;
  
  float aVel3;
  float aAcc3;
  
  DoublePendulum(PVector o, float len, float a1, float a2, float a3){
    origin = o;
    pos1 = new PVector(width/2, 140);
    pos2 = new PVector(width/2, 240);
    pos3 = new PVector(width/2,340);
    length = len;
    angle1 = a1;
    angle2 = a2;
    angle3 = a3;
  }
  
  void firstPendulum(){
    fill(244, 0, 0);
    line(origin.x, origin.y, pos1.x, pos1.y);
    ellipse(pos1.x, pos1.y, 45, 45);
    
    pos1.x = origin.x + length*sin(angle1);
    pos1.y = origin.y + length*cos(angle1);
    
    aAcc1 = -0.015 * sin(angle1);
    
    angle1 += aVel1; 
    aVel1 += aAcc1;
    
    aVel1 = aVel1 * 0.99;
  }
  
  void secondPendulum(){
    fill(244, 0, 0);
    line(pos1.x, pos1.y, pos2.x, pos2.y);
    ellipse(pos2.x, pos2.y, 45, 45);
    
    pos2.x = pos1.x + length*sin(angle2);
    pos2.y = pos1.y + length*cos(angle2);
    
    aAcc2 = -0.01 * sin(angle2);
    
    angle2 += aVel2; 
    aVel2 += aAcc2;
    
    aVel2 = aVel2 * 0.99;
  }
  
  void thirdPendulum(){
    fill(244, 0, 0);
    line(pos2.x, pos2.y, pos3.x, pos3.y);
    ellipse(pos3.x, pos3.y, 45, 45);
    
    pos3.x = pos2.x + length*sin(angle3);
    pos3.y = pos2.y + length*cos(angle3);
    
    aAcc3 = -0.005 * sin(angle3);
    
    angle3 += aVel3; 
    aVel3 += aAcc3;
    
    aVel3 = aVel3 * 0.99;
  }
}
