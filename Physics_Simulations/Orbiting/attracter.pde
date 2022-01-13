class Attracter{
    PVector pos;
    PVector vel;
    PVector acc;
    
    float G = 1;
    
    float mass = 20;
    
    Attracter(){
      pos = new PVector(width/2,height/2);
      vel = new PVector(0,0);
      acc = new PVector(0,0);
    }
    
    void render(){
      stroke(0);
      strokeWeight(2);
      
      fill(#8EA791,100);
      ellipse(pos.x,pos.y,70,70);
      
    }
    
    void motion(){
      vel.add(acc);
      pos.add(vel);
      acc.mult(0);
    }
    
    void moveAttracter(){
        if( mousePressed ){
            pos = new PVector(mouseX,mouseY);
        }
    }
    
    PVector attraction(Mover m){
      PVector force = PVector.sub(pos, m.pos);
      float d = force.mag();
      d = constrain(d,5,15);
      force.normalize();
      float strength = G*mass*m.mass/(d*d);
      force.mult(strength);
      
      return force;
    
    }
    
    

}
