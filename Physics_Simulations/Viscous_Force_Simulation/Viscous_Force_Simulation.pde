Ball[] ball = new Ball[3];

void setup() {
  size(640, 360);
  for ( int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(i*(width/3) + (width/6));
  }
}

float c = 0.1;

void draw() {
  background(#CCE6FA);

  for ( int i = 0; i < ball.length; i++) {

    if ( ball[i].pos.x < 200 ) {
      c= 0.1;
    } else if( ball[i].pos.x < 400) {
      c= 0.05;
    } else{
      c = 0.2;
    }

    PVector gravity = new PVector( 0, 0.3);

    PVector drag = ball[i].vel.get();
    float speed = ball[i].vel.mag();
    drag.normalize();
    drag.mult(c*-1*speed*speed);

    if ( ball[i].pos.y > 130 ) {
      ball[i].applyForce(drag);
    }
    ball[i].applyForce(gravity);


    ball[i].motion();

    ball[i].drawBall();
    ball[i].situation();
    if (mousePressed) {
      ball[i].reset();
    }
  }
}
