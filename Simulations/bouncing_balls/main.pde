class main{
  PVector posBall;
  PVector velBall;
  
  main(){
    velBall = new PVector(3,3);
    
  }
  
  
  
  void drawBall(){
    
    int x = width/2;
    int y = height/2;
    if(mousePressed){
      posBall = new PVector(mouseX,mouseY);
      x = floor(posBall.x);
      y = floor(posBall.y);
    }
    fill(255,0,0);
    ellipse(x,y,20,20);
    
    posBall.add(velBall);
  }
  
  
}
