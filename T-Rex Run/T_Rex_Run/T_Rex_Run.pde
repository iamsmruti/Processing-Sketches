PImage dino;
PImage player;
PImage cac1;
PImage cac2;

RectButton[] rectButtons = new RectButton[3];

void setup(){
  frameRate(15);
  size(640,360);
  dino = loadImage("dino.png");
  cac1 = loadImage("cac1.png");
  cac2 = loadImage("cac2.png");
  rectButtons[0] = new RectButton(400,200,100,50,#DE7979,"Play");
}

int gameState = 1;
int dinoState = 1;

PVector posDino = new PVector(100,230);
PVector terrain = new PVector(0,300);
PVector cactus = new PVector(400, 320);

void draw(){
  if( gameState == 1 ){
    background(#E1E8EA);
    image(dino, 0,0);
    for( int i = 0; i < 1 ; i++){
    rectButtons[i].button();
  }
  
  }
  
  if( gameState == 2 ){
    background(#E1E8EA);
    
    strokeWeight(1);
    line( terrain.x, terrain.y , terrain.x + width, terrain.y);
    
    if( dinoState % 2 == 0 ){
      player = loadImage("dinoStanding1.png");
    }else if ( dinoState % 2 == 1 ){
      player = loadImage("dinoStanding2.png");
    }
    
    image(player,posDino.x,posDino.y,50,100);
    
    if( keyPressed && key == CODED ){
      if( keyCode == UP && posDino.y > 130){
        player = loadImage("dinoStanding.png");
        posDino.y -= 20;
      }
    } else if ( posDino.y < 230 ){
        posDino.y += 25;
      }
    
  }
  
  cactus.x -= 25;
  
  dinoState ++;
  
  if( gameState == 3 ){
  
  }
  
  if( gameState == 4 ){
  
  }


}

void mousePressed(){
  if( gameState == 1 ){
    if( mouseX > rectButtons[0].x && mouseY > rectButtons[0].y && mouseX < rectButtons[0].x+rectButtons[0].w && mouseY < rectButtons[0].y+rectButtons[0].h){
        gameState = 2;
    }
  }
}
void ostacles(){
  for ( int i = 0; i < 100 ; i++){
     image( cac1, cactus.x, cactus.y, 40,80);
  }
}
