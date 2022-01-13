class Ball {
  PVector posBall;
  PVector vel;
  PVector acc;

  float mass;

  Ball() {
    posBall = new PVector( width/6, height/2);
    vel = new PVector( 0, 0);
    acc = new PVector(0, 0);
    mass = 2;
  }

  void renderBall() {
    image(ball,posBall.x,posBall.y);
  }

  void motion() {
    vel.add(acc);
    posBall.add(vel);
    acc.mult(0);
  }

  void logic() {
    if ( posBall.y > height-100) {
      posBall.y = height-100;
      vel.y *= -1;
    }
  }

  void applyForce( PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }

  void controls() {
    if ( keyPressed && key == CODED) {
      if ( keyCode == RIGHT) {
        acc.x = 0.5;
        vel.limit(5);
        s.acc.x = -1;
      } else if ( keyCode == LEFT && posBall.x > 100 ) {
        acc.x = -0.5;
        vel.limit(5);
      } else if ( keyCode == UP && posBall.y > (height-110)) {
        acc = new PVector(0, -8 );
        vel.limit(5);
      }
    }
  }
}
