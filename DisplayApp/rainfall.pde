class Drop{
  float z = random(0,20);
  PVector pos = new PVector(random(-200,840), random(-500,-100));
  PVector vel = new PVector(0,map(z,0,20,4,10));
  PVector acc = new PVector(0,0);
    float len = map(z,0,20,10,20);
    
    
    
    void fall(){
      vel.add(acc);
      pos.add(vel);
      //ySpeed = ySpeed + grav;
      
      if( pos.y > height){
          pos.y = random(-200,-100);
          vel.y = map(z,0,20,4,10);
      }
      
      if( pos.x > width ){
          pos.x = random (-200,840);
      }
      acc.mult(0);
      
    }
    
    void render(){
      float thick = map(z,0, 20, 1,3);
      strokeWeight(thick);
      stroke(#E3ECFA);
      line(pos.x,pos.y,pos.x,pos.y+len);
    }
    
    void applyForce( PVector force){
        acc.add(force);
    }
    
}
