PImage pb;
PImage logo;
PImage playBtn;
PImage aboutBtn;
PImage clickStart;
PImage backBtn;
PImage profile;

int scene = 0; 
int list = 0;
int simNumber = 0;

SimplePendulum s;
DoublePendulum t;
BouncingBall b;
Snow[] snow = new Snow[400];
Drop[] drops = new Drop[500];

Attracter a;
Mover[] movers = new Mover[3];



void setup() {
  size(600, 600);
  pb = loadImage("images/pb.jpg");
  logo = loadImage("images/MySimulation.png");
  playBtn = loadImage("images/playbutton.png");
  aboutBtn = loadImage("images/about.png");
  clickStart = loadImage("images/clicktostart.png");
  backBtn = loadImage("images/back.png");
  profile = loadImage("images/profile.jpg");


  for (int i = 0; i < snow.length; i++) {
    snow[i] = new Snow();
  }

  for ( int i = 0; i < drops.length; i ++) {
    drops[i] = new Drop();
  }

  a = new Attracter();
  for ( int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }

  s = new SimplePendulum(new PVector(width/2, 0), 300, PI/4);
  t = new DoublePendulum(new PVector(width/2, 0), 150, PI/4, PI/4, PI/4);
  b = new BouncingBall();
}

void draw() {
  if ( scene == 0 ) {
    firstPage();
  } else if ( scene == 1 ) {
    aboutPage();
  } else if ( scene == 2 ) {
    mainPage();
  } 

  if ( simNumber == 1 ) {
    snow();
  } else if ( simNumber == 2 ) {
    rain();
  } else if ( simNumber == 3 ) {
    ballBounce();
  } else if ( simNumber == 4 ) {
    orbiting();
  } else if ( simNumber == 5 ) {
    simplePendulum();
  } else if ( simNumber == 6 ) {
    triplePendulum();
  }

  constrain(list, 1, 2);
}

float c = 0.1;

void firstPage() {
  imageMode(CENTER);
  image(pb, width/2, height/2, width, height);
  image(logo, width/2, height/3, 480, 50);
  ellipse(width/2, height/2, 103, 103);
  image(playBtn, width/2, height/2, 100, 100);
  image(aboutBtn, 530, 530, 120, 75);
  image(clickStart, width/2, 400, 400, 60);

  stroke(#571F09);
  strokeWeight(3);
  line( 20, 20, 580, 20);
  line( 20, 20, 20, 580);
  line( 580, 20, 580, 580);
  line( 20, 580, 580, 580);
}

void aboutPage() {
  imageMode(CORNER);
  imageMode(CENTER);
  image(pb, width/2, height/2, width, height);

  stroke(#571F09);
  strokeWeight(3);
  line( 20, 20, 580, 20);
  line( 20, 20, 20, 580);
  line( 580, 20, 580, 580);
  line( 20, 580, 580, 580);

  image(backBtn, 100, 520, 140, 70);

  fill(#EDB886);
  rect(30, 30, 540, 450);



  strokeWeight(20);
  rect(58, 128, 202, 202);
  image(profile, 160, 230, 200, 200);

  //textAlign(CENTER, CENTER );

  textSize(27);
  fill(#571F09);
  text("| KNOW THE CREATOR |", 170, 80);
  text("________________________", 165, 83);

  text("| CONTACT |", 240, 380);
  text("_____________", 238, 383);

  fill(255);
  textSize(20);
  text("I am Smruti Ranjan Badatya", 290, 160);
  text("- Computer Science Student", 290, 190);
  text("- At VSSUT, Burla", 290, 220);
  text("- LOVE to code", 290, 250);

  text("WhatsApp - 7894718923", 100, 430);
  text("Email - smrutiranjanbadatya2@gmail.com", 100, 460);
}

void mainPage() {
  list = 1;
  imageMode(CENTER);
  image(pb, width/2, height/2, width, height);

  stroke(#571F09);
  strokeWeight(3);
  line( 20, 20, 580, 20);
  line( 20, 20, 20, 580);
  line( 580, 20, 580, 580);
  line( 20, 580, 580, 580);

  image(backBtn, 100, 520, 140, 70);

  fill(#EDB886);
  rect(80, 30, 440, 450);

  for ( int i = 0; i < 7; i++) {
    rect(100, 50 + i*60, width-200, 48);

    if (mouseX > 100 && mouseX < 400 && mouseY > 110 + (i)*60 && mouseY < 160 + i*60) {
      fill(#89B6E5);
    } else {
      fill(#137EC2);
    }
    println(mouseX, mouseY);
  }

  if ( list ==1 ) {
    //rect( 32,240, 35,70);
    //rect( 535, 240, 35, 70);
    fill(#89B6E5);
    textSize(40);
    //text("<", 32, 285);
    //text(">", 552, 270);

    textAlign(CENTER, CENTER);
    textSize(28);
    fill(255);
    text("Click to view the simulation", width/2, 70); 

    fill(#00F5D0);
    textSize(25);
    text("SNOWFALL", width/2, 137);
    text("RAINFALL", width/2, 197);
    text("BOUNCING BALL", width/2, 257);
    text("ORBITING", width/2, 317);
    text("SIMPLE PENDULUM", width/2, 377);
    text("TRIPLE PENDULUM", width/2, 437);
  } else if ( list == 2 ) {


    rect( 32, 240, 35, 70);
    rect( 535, 240, 35, 70);
    fill(#89B6E5);
    textSize(40);
    text("<", 50, 270);
    text(">", 552, 270);

    textAlign(CENTER, CENTER);
    textSize(28);
    fill(255);
    text("Click to view the simulation", width/2, 70); 

    fill(#00F5D0);
    textSize(25);
    text("", width/2, 137);
    text("", width/2, 197);
    text("", width/2, 257);
    text("", width/2, 317);
    text("", width/2, 377);
    text("", width/2, 437);
  }
}

void mousePressed() {
  if ( scene == 0 ) {
    if (  mouseX > width/2-50 & mouseX < width/2+50 && mouseY > height/2-50 && mouseY < height/2+50) {
      scene = 2;
    }

    if (  mouseX > 530-60 & mouseX < 530+60 && mouseY > 530 - 37 && mouseY < 530+37) {
      scene = 1;
    }
  }


  if ( mouseX > 100-70 & mouseX < 100+70 && mouseY > 520-35 && mouseY < 520+35 ) {
    if ( scene == 1 || scene == 2 || scene == 3 ) {
      scene = 0;
      
    }
    if ( simNumber == 1 || simNumber == 2 || simNumber == 3 || simNumber == 4 || simNumber == 5 || simNumber == 6) {
      
      simNumber = 0;
      scene = 2;
    }
  }

  if ( scene == 2 ) {
    if ( mouseX > 535 & mouseX < 570 && mouseY > 240 && mouseY < 310 ) {
      list  ++;
    } else if ( mouseX > 30 & mouseX < 65 && mouseY > 240 && mouseY < 310 ) {
      list--;
    } else if ( mouseX > 100 && mouseX < 400 && list ==1 ) {
      if ( mouseY < 158 && mouseY > 110 ) {
        simNumber = 1;
        scene = -1;
      } else if ( mouseY < 216 && mouseY > 168) {
        simNumber = 2;
        scene = -1;
      } else if ( mouseY < 277 && mouseY > 231) {
        simNumber = 3;
        scene = -1;
      } else if ( mouseY < 336 && mouseY > 291) {
        simNumber = 4;
        scene = -1;
      } else if ( mouseY < 397 && mouseY > 348) {
        simNumber = 5;
        scene = -1;
      } else if ( mouseY < 459 && mouseY > 409) {
        simNumber = 6;
        scene = -1;
      }
    }
  }
}

void rain() {
  simNumber = 2;
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

  image(backBtn, 100, 520, 140, 70);
}

void snow() {
  simNumber = 1;
  background(#B9C0CB);
  for ( int i = 0; i < snow.length; i++ ) {
    snow[i].render();
    snow[i].fall();
  }

  image(backBtn, 100, 520, 140, 70);
}

void ballBounce() {
  simNumber = 3;
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

  image(backBtn, 100, 520, 140, 70);
}

void orbiting() {
  simNumber = 4;
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

  image(backBtn, 100, 520, 140, 70);
}

void simplePendulum() {
  simNumber = 5;
  background(#7CBDED);
  stroke(0);
  s.go();

  image(backBtn, 100, 520, 140, 70);
}

void triplePendulum() {
  simNumber = 6;
  stroke(0);
  background(#7CBDED);
  t.firstPendulum();
  t.secondPendulum();
  t.thirdPendulum();

  image(backBtn, 100, 520, 140, 70);
}
