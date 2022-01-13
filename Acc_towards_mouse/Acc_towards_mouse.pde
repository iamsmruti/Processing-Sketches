Mover m;

void setup(){
  size(400,400);
  m = new Mover();
}

void draw(){
  background(#C6C6BE);
  m.show();
  m.physics();
}
