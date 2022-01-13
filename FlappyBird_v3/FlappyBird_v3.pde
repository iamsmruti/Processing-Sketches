PImage startPage;
PImage clouds;
PImage bird;
PImage pipe;

void setup(){
  size(640,360);
  startPage = loadImage("startPage.png");
  clouds = loadImage("clouds12.png");
  bird = loadImage("bird12.png");
  pipe = loadImage("pipe12.png");
}
//gameState = 0 -- startPage      //gameState = 1 -- playScreen

int gameState = 0;
PVector posClouds  = new PVector(0,0);
int score;
PVector posBird = new PVector(280,120);
PVector posPipe = new PVector(110,-200);
int p;
                             
void draw(){
    if( gameState == 1 ){
      
      image(clouds,posClouds.x,posClouds.y,width,height);
      image(clouds,posClouds.x + 640,posClouds.y,width,height);
      image(clouds,posClouds.x + 1280,posClouds.y,width,height);
      
      posClouds.x -= 3;
      
          if( posClouds.x < -640){
              posClouds.x = 0;
          }
          
       text(mouseX,mouseX,mouseY);
       text(mouseY,mouseX,mouseY + 60);
       image(bird,posBird.x,posBird.y,50,50); 
       
             if( mousePressed ){
                   posBird.y -= 10;
             } else {
                 posBird.y += 5;
             }
       
               image(pipe,posPipe.x,posPipe.y,60,720); 
               image(pipe,posPipe.x + 200,posPipe.y,60,720);
               image(pipe,posPipe.x + 400,posPipe.y,60,720);
               image(pipe,posPipe.x + 600,posPipe.y,60,720); 
               image(pipe,posPipe.x + 800,posPipe.y,60,720);
               image(pipe,posPipe.x + 1000,posPipe.y,60,720);
               
              posPipe.x -= 5;
              
               if(posPipe.x < -640){
                   posPipe.x = 80;
                   p = floor(random(-50,50));
               }
    
  
    } else {
        
        image(startPage,0,0,width,height);
    }
    

}

void mouseClicked(){
  if(gameState == 0){
      gameState = 1;
  }

}
