class Mover{
  PVector pos;
  PVector vel;
  PVector acc;
  
  
  Mover(){
    pos = new PVector( width/2, height/2);
    vel = new PVector( 0,0);
    acc = new PVector(0,0);
  }
  
  void show(){
    fill(#EAE45C);
    ellipse(pos.x,pos.y,40,40);
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    
    if( pos.x > width || pos.y < 0 ){
      vel.x *= -1;
    } else if( pos.y > height || pos.y < 0){
      vel.y *= -1;
    }  
    acc.mult(0);
  }
  
  void applyForce(PVector f){
    acc.add(f);
  }
}
