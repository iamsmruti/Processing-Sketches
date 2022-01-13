class House{
    
  void drawBack(){
    background(#83B1FA);
    fill(#19A233);
    rect(0, 330, width, 50);
  }
  
  void sun(float x, float y, float size){
    fill(#FAB319);
    stroke(#FA9B00);
    ellipse(x,y,size,size);
  }  
  
  void tree(float x, float y, float size){
      fill(#48D162);
      ellipse(x,y,size,size);
       
  }
}
