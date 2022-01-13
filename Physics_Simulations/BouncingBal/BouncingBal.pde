ball b;

float c = 0.1;

void setup(){
    size(640,360);
    b = new ball();
}

void draw(){
    PVector gravity = new PVector(0, 0.3);
    b.applyForce(gravity);
    
    PVector wind = new PVector(0.1,0);
    //b.applyForce(wind);
    
    PVector friction = b.vel.get();
    friction.normalize();
    friction.mult(-c);
    
    //b.applyForce(friction);
  
    b.render();
    b.motion();
    b.logic();
    
    if ( mousePressed ) {
      b.pos.x = mouseX;
      b.pos.y = mouseY;
    }
    
}
