class Car{
    PVector pos; 
    PVector vel;
    PVector acc;
    
    float mass;
    
    Car(){
      pos = new PVector( 50, 297);
      vel = new PVector( 3,0 );
      acc = new PVector(0,0 );
      
      mass = 1;
    }
    
    void drawBack(){
      background(#8ACDF5);
      stroke(0);
      fill(#339B2C);
          rect(0, 300, width,70);
      
    }
    
    void drawCar(){
      noStroke();
      fill(#9E54F5);
      rect(pos.x - 30, pos.y - 15, 60, 15);
      rect(pos.x - 20, pos.y - 35, 40, 20);
      fill(0);
      ellipse(pos.x-15, pos.y, 15,15);
      ellipse(pos.x+15, pos.y, 15,15);
    }
    
    void motion(){
      vel.add(acc);
      pos.add(vel);
      acc.mult(0);
    }
    
    void logic(){
        if (pos.x > width ){
          pos.x = -10;
          vel.x = 3;
        }
    
    }
    
    void applyForce( PVector force) {
        PVector f = PVector.div(force, mass);
        acc.add(f);
    }
    
    
}
