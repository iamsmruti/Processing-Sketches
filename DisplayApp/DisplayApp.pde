SimplePendulum s;
DoublePendulum t;
BouncingBall b;
Snow[] snow = new Snow[400];
Drop[] drops = new Drop[500];

Ball[] ball = new Ball[3];

Attracter a;
Mover[] movers = new Mover[1];


int scene = 0;

void setup() {
  size(600, 600);

  for (int i = 0; i < snow.length; i++) {
    snow[i] = new Snow();
  }

  for ( int i = 0; i < drops.length; i ++) {
    drops[i] = new Drop();
  }

  for ( int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(i*(width/3) + (width/6));
  }

  a = new Attracter();
  for ( int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  s = new SimplePendulum(new PVector(width/2, 0), 300, PI/4);
  t = new DoublePendulum(new PVector(width/2, 0), 150, PI/4, PI/4, PI/4);
  b = new BouncingBall();
}


float c = 0.1;

void draw() {

  if ( scene == 0 ) {
    background(#137EC2);
    noStroke();
    startButton();

    if ( mousePressed) {
      scene = 1;
    }
  } else if ( scene == 2) {
    background(#B9C0CB);
    for ( int i = 0; i < snow.length; i++ ) {
      snow[i].render();
      snow[i].fall();
    }
  } else if ( scene == 3 ) {
    background(#90A3C1);

    PVector wind = new PVector(0.01, 0);


    for ( int i =0; i < drops.length; i++) {
      if ( mousePressed) {
        drops[i].applyForce(wind);
      } else {
        drops[i].acc.mult(0);
        drops[i].vel.x = 0;
      }
      drops[i].fall();
      drops[i].render();
    }
  } else if ( scene == 4 ) { 

    background(#CCE6FA);

    for ( int i = 0; i < ball.length; i++) {

      if ( ball[i].pos.x < 200 ) {
        c= 0.1;
      } else if ( ball[i].pos.x < 400) {
        c= 0.05;
      } else {
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
  } else if ( scene == 5 ) {
    PVector gravity = new PVector(0, 0.3);
    b.applyForce(gravity);

    PVector wind = new PVector(0.1, 0);
    //b.applyForce(wind);

    PVector friction = b.vel.get();
    friction.normalize();
    friction.mult(-c);

    b.applyForce(friction);

    b.render();
    b.motion();
    b.logic();

    if ( mousePressed ) {
      b.pos.x = mouseX;
      b.pos.y = mouseY;
    }
  } else if ( scene == 6) {
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
  } else if ( scene == 7) {
    background(#7CBDED);
    stroke(0);
    s.go();
  } else if ( scene == 8 ) {
    stroke(0);
    background(#7CBDED);
    t.firstPendulum();
    t.secondPendulum();
    t.thirdPendulum();
  } else {

    background(#137EC2);
    stroke(#00F5D0);
    rectMode(CENTER);

    fill(#137EC2);
    for ( int i = 0; i < 10; i++) {

      rect(width/2, 30 + i*60, width-20, 45);

      if (mouseX > 10 && mouseX < 590 && mouseY-60 > 5 + i*60 && mouseY-60 < 50+ i*60) {
        fill(#89B6E5);
      } else {
        fill(#137EC2);
      }
    }

    if ( mousePressed && scene ==1) {
      if ( mouseX > 10 && mouseX < 590 ) {
        if ( mouseY < 120 && mouseY > 60) {
          scene = 2;
        } else if ( mouseY < 180 && mouseY > 120) {
          scene = 3;
        } else if ( mouseY < 240 && mouseY > 180) {
          scene = 4;
        } else if ( mouseY < 300 && mouseY > 240) {
          scene = 5;
        } else if ( mouseY < 360 && mouseY > 300) {
          scene = 6;
        } else if ( mouseY < 420 && mouseY > 360) {
          scene = 7;
        } else if ( mouseY < 480 && mouseY > 420) {
          scene = 8;
        } else if ( mouseY < 540 && mouseY > 480) {
          scene = 9;
        } else if ( mouseY < 600 && mouseY > 540) {
          scene = 10;
        }
      }
    }
    textAlign(CENTER, CENTER);
    textSize(32);
    fill(255);
    text("Click to view the simulation", width/2, 27); 

    fill(#00F5D0);
    textSize(25);
    text("SNOWFALL", width/2, 87);
    text("RAINFALL", width/2, 150);
    text("DRAG FORCE", width/2, 210);
    text("BOUNCING BALL", width/2, 270);
    text("ORBITING", width/2, 330);
    text("SIMPLE PENDULUM", width/2, 390);
    text("TRIPLE PENDULUM", width/2, 450);
    text("", width/2, 510);
    text("", width/2, 570);
  }

  fill(#F6593E);
  rect(500, 500, 80, 40);
  if ( mousePressed && mouseX > 460 && mouseX < 540 && mouseY > 480 && mouseY < 520 ) {
    if ( scene == 1 ) {
      scene = 0;
    } else {
      scene = 1;
    }
  }
}

void startButton() {
  fill(#F6593E);
  ellipse(width/2, height/2, 150, 150);

  fill(#F56A6A);
  triangle(280, 260, 335, 300, 280, 345);
  translate(-10, 10);
  fill(#C21313);
  triangle(280, 260, 335, 300, 280, 345);
}
