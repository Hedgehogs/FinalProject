class Grass {
  color c;
  color s1;
  Grass() {
    c = color(255);
    s1=0;
  }
  void display() {
    fill(c);
    rect(0, height-150, 1250, 200);
    fill(s1);
    text("4", 100, height-100);
  }
}

