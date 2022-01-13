class Mover{
    PVector pos;
    PVector vel;
    PVector acc;
    
    float a = 0.0;
    float aVel = 0.0;
    float aAcc = 0.001;
    
    float mass;
    
    Mover(){
      pos = new PVector(random(200,600),200);
      vel = new PVector(random(1,5),0);
      acc = new PVector(0,0);
      mass = 3;
    }
    
    void render(){
      stroke(0);
      strokeWeight(2);
      
      fill(#8EA791,100);
      ellipse(pos.x,pos.y,mass*7,mass*7);
    }
    
    void motion(){
      vel.add(acc);
      pos.add(vel);
     
      acc.mult(0);
      vel.limit(10);
    }
    
    void applyForce(PVector force){
      acc.add(force);
    }


}
