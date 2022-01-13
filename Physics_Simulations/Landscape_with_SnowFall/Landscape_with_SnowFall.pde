Snow[] snow = new Snow[400];

House h;

void setup(){
  size(640,360);
  h = new House();
  for(int i = 0; i < snow.length ; i++){
     snow[i] = new Snow();
  }
}

void draw(){
  h.drawBack();
  h.sun(550,60,40);
  h.tree(300,300,200);
  
  for( int i = 0; i < snow.length ; i++ ){
      snow[i].render();
      snow[i].fall();
  }

}
