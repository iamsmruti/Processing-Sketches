class RectButton {
  int x, y, w, h;
  color c;
  String t;

  RectButton(int xPos, int yPos, int wide, int high, color colour, String text) {
    x = xPos;
    y = yPos;
    w = wide;
    h = high;
    c = colour;
    t = text;
  }

  void button() {
    //// APPEARANCE 
    fill(c);
    strokeWeight(3);
    rect(x, y, w, h,25);

    fill(0);
    textSize(h*0.6);
    textAlign(CENTER,CENTER);
    text(t, x + w/2, y + h/2);
    
    
    //// LOGIC 
    if( mouseX > x && mouseY > y && mouseX < x+w && mouseY < y+h){
      
      c = #DE5C5C;
    } else{
      c = #DE7979;
    }
    
  }
  
}
