class Sky {
  color c;
  color s1;
  Sky() {
    c = color(255);
    s1 = 0;
  }
  void display() {
    fill(c);
    noStroke();
    rect(0, 0, 1250, height-150);
    stroke(3);
    fill(s1);
    text("5", 100, 500);
  }
}
