class Grass2 {
  color c1;
  color s1;
  Grass2() {
    c1 = color(255);
    s1 =0;
  }
  void display() {
    fill(c1);
    rect(0, height-250, 1250, 300);
    fill(s1);
    text("4", 100, height-100);
  }
}
