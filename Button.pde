class Button {
  int bwidth,bheight;
  float xpos,ypos;
  boolean over;           // is the mouse over the slider?
  boolean locked;
  String text;
  
  Button (float xp, float yp, int bw, int bh, String text_1) {
    bwidth = bw;
    bheight = bh;
    xpos = xp;
    ypos = yp;
    text = text_1;
  }
  
  void Stringdisplay () {
    textSize(16);
    fill(0, 102, 153);
    text(text, 348, height*5/6+16);
  }

  
  void display () {
    fill(204);
    rect(xpos, ypos, bwidth, bheight);
  }
  
  boolean overRect()  {
    if (mouseX >= xpos && mouseX <= xpos+bwidth && 
        mouseY >= ypos && mouseY <= ypos+bheight) {
      return true;
    } else {
      return false;
    }
  }
}
