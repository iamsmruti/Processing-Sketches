Mover m;

void setup(){
  
  size( 500,500 );
  m = new Mover();
}

void draw(){
  background(#757DF7);
  PVector force = new PVector( 0,0.2);
  m.applyForce(force);
  m.show();
  m.update();
}
