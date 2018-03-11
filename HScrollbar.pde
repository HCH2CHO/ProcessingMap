class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;
  
  HScrollbar (float xp, float yp, int sw, int sh) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos+swidth*2/5;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      if (newspos>xpos && newspos<xpos+swidth*1/5)
        spos = xpos;
      if (newspos>xpos+swidth*1/5 && newspos<xpos+swidth*2/5)
        spos = xpos+swidth*1/5;
      if (newspos>xpos+swidth*2/5 && newspos<xpos+swidth*3/5)
        spos = xpos+swidth*2/5;
      if (newspos>xpos+swidth*3/5 && newspos<xpos+swidth*4/5)
        spos = xpos+swidth*3/5;
      if (newspos>xpos+swidth*4/5 && newspos<xpos+swidth)
        spos = xpos+swidth*4/5;
    }
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
       mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(204);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(0, 0, 0);
    } else {
      fill(102, 102, 102);
    }
    rect(spos, ypos, swidth/5, sheight);
  }

  float getPos() {
    // Convert spos to be values between
    // 0 and the total width of the scrollbar
    return spos * ratio;
  }
}
