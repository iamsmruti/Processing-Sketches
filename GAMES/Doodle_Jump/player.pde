class Player{
  PVector pos;
  PVector vel;
  PVector acc;
  
  Player(){
    pos = new PVector(width/2, 4*height/6);
    vel = new PVector(0,0);
    acc = new PVector(0,0);
  }
  
  void render(){}
  
  void physics(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  
  void applyForce(){}
  
  void controls(){}
}
