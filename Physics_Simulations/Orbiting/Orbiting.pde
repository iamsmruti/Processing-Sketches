Attracter a;
Mover[] movers = new Mover[1];

void setup() {
  size(700, 700);

  a = new Attracter();
  for ( int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(#C3CBC4);

  a.render();

  a.motion();

  a.moveAttracter();

  for ( int i = 0; i < movers.length; i++) {
     PVector f = a.attraction(movers[i]);
    movers[i].render();
    movers[i].motion();
    movers[i].applyForce(f);
  }
}
