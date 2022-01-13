class Ball{
    PVector pos;
    PVector vel;
    PVector acc;
    
    float z;
    
    Ball(float x){
       pos = new PVector(x,0);
       vel = new PVector(0,0);
       acc = new PVector(0,0);
    }
    
    void motion(){
      vel.add(acc);
      pos.add(vel);
      acc.mult(0);
    }
    
    void drawBall(){
        noStroke();
        fill(#F52F32);
        ellipse(pos.x,pos.y,20,20);
    
    }
    
    void situation(){
        noStroke();
        
        fill(#C6E054,100);
        textSize(30);
        text("OIL", 70,50);
        rect(0,130,213,230);
        
        fill(#54A4E0,100);
        text("WATER", 270,50);
        rect(213,130,213,230);
        
        fill(#6AF079,100);
        text("JELLY", 510,50);
        rect(426,130,214,230);
    }
    
    void reset(){
        pos.y = -10;
    }
    
    void applyForce(PVector force){
        acc.add(force);
    }
}
