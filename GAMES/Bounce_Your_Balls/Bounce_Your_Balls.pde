Stage s;
Ball b;
Obstacles o;

PImage ball;
PImage land;
PImage clouds;
PImage tree;
PImage onlyLand;

int mode = 2;   // 1-Intro  ----  2-Game  ------ 3- GameOver Screen

void setup(){
  size(800,450);
  
  s = new Stage();
  b = new Ball();
  o = new Obstacles();
  
  imageMode(CENTER);
  ball = loadImage("ball.png");
  land = loadImage("land_with_grass.png");
  tree = loadImage("ellipse_tree.png");
  clouds = loadImage("clouds.png");
  onlyLand = loadImage("land_without_grass..png");
  
}

float c = 0.4;

void draw(){
  PVector gravity = new PVector(0, 0.8);
  b.applyForce(gravity);

  if ( b.posBall.y > height-100) {
    gravity.y = 0;
  }
  
  PVector friction = b.vel.get();
  friction.normalize();
  friction.mult(-c);
  
  if( mode == 1 ){}
  
  if( mode == 2 ){
    s.render();
    s.motion();
    
    b.applyForce(friction);
    b.logic();
    b.renderBall();
    b.controls();
    b.motion();
  }
  
  if( mode == 3 ){}

}
