class Stage {
  PVector pos;
  PVector vel;
  PVector acc;


  Stage() {
    pos = new PVector(0, height-90);
    vel = new PVector(0,0);
    acc =new PVector(0,0);
  }
  
  void motion(){
    vel.add(pos);
    pos.add(vel);
  }

  void render() {
    background(#5FCCF2);
    for ( int i = 0; i < 100; i++) {
      image(land, pos.x + 80*i, pos.y);
      image(onlyLand, pos.x + 80*i, pos.y + 80);
      
      image(tree, pos.x * random(300,400) ,pos.y);
    }
  }
}
