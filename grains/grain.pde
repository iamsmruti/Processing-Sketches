class Grain {
  PVector pos;
  PVector vel;
  PVector acc;

  Grain(int x, int y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void show() {
    fill(#EAEADF);
    stroke(#EAEADF);
    strokeWeight(1.5);
    point(pos.x, pos.y);

    pos.add(vel);
  }

  void physics() {
    acc = PVector.random3D();
    vel.add(acc);
    pos.add(vel);

    if ( pos.x > width || pos.x< 0 ) {
      vel.x *= -1;
    } else if ( pos.y > height || pos.y < 0) {
      vel.y *= -1;
    }

    vel.limit(1);
  }
}
