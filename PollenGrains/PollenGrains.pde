Bee[] bees = new Bee[100];

void setup(){
  size(1000,600);
  for( int i = 0; i < bees.length; i++){
    bees[i]= new Bee();
  }
  
}

void draw(){
  background(#459AED);
  
  for( int i = 0; i < bees.length; i++){
    bees[i].show();
    bees[i].physics();
  }
}
