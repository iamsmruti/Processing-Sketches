Drop[] drops = new Drop[500];

void setup(){
    size(640,360);
    for( int i = 0; i < drops.length ; i ++){
        drops[i] = new Drop();
    }
}

void draw(){
  background(#90A3C1);
  
  PVector wind = new PVector(0.01,0);
  
  
  for ( int i =0; i < drops.length ; i++){
    if( mousePressed){
        drops[i].applyForce(wind);
    } else {
        drops[i].acc.mult(0);
        drops[i].vel.x = 0;
    }
    drops[i].fall();
    drops[i].render();
  }

}
