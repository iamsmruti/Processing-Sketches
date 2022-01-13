void setup(){
  size( 640,640 );
}

void draw(){
  background(255);
  drawCircle(width/2,height/2,300);
  frameRate(1);
}

void drawCircle(float x, float y, float d){
  noFill();
  stroke(0);
  ellipse(x,y,d,d);
  if( d > 1 ){
    drawCircle(x + d/4,y,d/4);
    drawCircle(x - d/4,y,d/4);
    //drawCircle(x,y + d/2,d/2);
    //drawCircle(x,y-d/2,d/2);
  }
}
