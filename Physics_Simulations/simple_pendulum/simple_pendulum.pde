pendulum p;

void setup() {
  size(640, 360);
  p = new pendulum();
}

void draw() {
  PVector gravity = new PVector(0, 0.01);
  p.applyForce(gravity);

  p.render();
  p.motion();
  p.physics();
}
