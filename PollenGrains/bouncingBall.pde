class Bee {
  PVector pos;
  PVector vel;
  PVector acc;

  Bee() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void show() {
    fill(#FCF66B);
    strokeWeight(4);
    ellipse(pos.x, pos.y, 50, 50);

    pos.add(vel);
  }

  void physics() {
    acc = PVector.random2D();
    vel.add(acc);
    pos.add(vel);

    if ( pos.x > width || pos.x< 0 ) {
      vel.x *= -1;
    } else if ( pos.y > height || pos.y < 0) {
      vel.y *= -1;
    }

    vel.limit(3);
  }
}
