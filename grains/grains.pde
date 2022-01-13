Grain[] grains = new Grain[10000];

void setup(){
  size(200,200);
  for( int i = 0; i < grains.length; i++){
    grains[i]= new Grain(floor(random(0,width)),floor(random(0,height)));
  }
  
}

void draw(){
  background(#D8D8D8);
  
  for( int i = 0; i < grains.length; i++){
    grains[i].show();
    grains[i].physics();
  }
}
