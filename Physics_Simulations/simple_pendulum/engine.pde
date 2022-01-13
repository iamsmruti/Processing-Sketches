class pendulum{
  PVector pos;
  PVector vel;
  PVector acc;
  
  float len = height/2;
  
  pendulum(){
      translate(width/2, height/2);
      pos = new PVector(width/2,len);
      vel = new PVector(0,0);
      acc = new PVector(0,0);
  
  }
  
  void render(){
     background(255);
    
     line(width/2, 0, pos.x, pos.y);
     ellipse(pos.x, pos.y, 30,30);
     
  }
  
  void motion(){
      vel.add(acc);
      pos.add(vel);
  }
  
  void physics(){
      if ( pos.mag() > len ){
        acc = new PVector(0,0);
      }
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }

}
