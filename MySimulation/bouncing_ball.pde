class BouncingBall {
  PVector pos;
  PVector vel;
  PVector acc;

  float mass;

  BouncingBall() {
    pos = new PVector( width/2, 0/2);
    vel = new PVector( 0, 0);
    acc = new PVector(0, 0);
    mass = 2;
  }

  void render() {
    background(#30AEFA);

    fill(#FA3033);
    ellipse(pos.x, pos.y, mass*20, mass*20);
  }

  void motion() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void logic() {
    if ( pos.x > width ) {
      pos.x = width;
      vel.x *= -1;
    } else if ( pos.x < 0 ) {
      pos.x = 0;
      vel.x = vel.x* -1;
    }

    if ( pos.y > height) {
      pos.y = height;
      vel.y *= -1;
    }
  }

  void applyForce( PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}
