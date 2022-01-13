class Block{
  PVector pos;
  PVector vel;
  PVector acc;
  
  Block(){
    pos = new PVector(0,0);
    vel = new PVector(0,0);
    acc = new PVector(0,0);
  }
  
  void physics(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
}
