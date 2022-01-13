class Snow{
  float z = random(0,20);
    PVector pos;
    PVector vel;
    PVector acc;
    
    float size = map(z,0,20,0.1,10);
    
    Snow(){
        pos = new PVector(random(width), random(-500,-100));
        vel = new PVector(0,map(z,0,20,1,3));
        acc = new PVector(0,0);
        
    }
    
    void render(){
      fill(255);
      noStroke();
      ellipse(pos.x, pos.y, size,size);
    
    }
    
    void fall(){
        vel.add(acc);
        pos.add(vel);
        acc.mult(0);
        
        if( pos.y > height ){
           pos.y = random(-200,-100);
        }
    }
    
    void applyForce( PVector force ){
       acc.add(force);
    }

}
