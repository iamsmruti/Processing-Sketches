Snow[] snow = new Snow[400];

void setup(){
  size(640,360);
  for(int i = 0; i < snow.length ; i++){
     snow[i] = new Snow();
  }
}

void draw(){
  background(#B9C0CB);
  for( int i = 0; i < snow.length ; i++ ){
      snow[i].render();
      snow[i].fall();
  }

}
