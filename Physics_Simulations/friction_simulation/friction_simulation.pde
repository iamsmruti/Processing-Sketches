/**
  This simulation demonstration the braking of a car . 
  The car moves with a constant velocity unitl we apply brakes.
  We can apply brakes by mouseClicking the screen . 
  
  
  NOTE : 
    - Here 'a' represents the time you want the car to be stopped within . Lessser the value of a ,
      more time it will take for the car to stop after braking and vice-versa

**/


Car c;

void setup(){
    size(640, 360);
    c = new Car();
}

float a = 0.03;

void draw(){
  
  
  PVector friction = c.vel.get();
  friction.normalize();
  friction.mult(-a);
  
  if(keyPressed && key == CODED && keyCode == LEFT){
    c.applyForce(friction);
  }else if(keyPressed && key == CODED && keyCode == RIGHT){
    c.vel.x = 3;
  } else {
    c.acc.mult(0);
  }
  
  c.drawBack();  
  c.drawCar();
  c.motion();
  c.logic();
    
}
