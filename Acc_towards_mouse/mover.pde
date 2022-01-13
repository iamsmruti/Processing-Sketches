class Mover{
  PVector pos;
  PVector vel;
  PVector acc;
  PVector mouse;
  
  Mover(){
    
    pos = new PVector( width/2, height/2);
    vel = new PVector( 0,0);
    acc = new PVector( 0, 0);
  }
  
  void show(){
    fill(#EDE765);
    ellipse(pos.x, pos.y, 40,40);
  }
  
  void physics(){
    mouse = new PVector( mouseX, mouseY );
    mouse.sub(pos);
    mouse.setMag(0.5);
    
    acc = mouse;
    
    vel.add(acc);
    pos.add(vel);
    
    vel.limit(5);
  }
}
