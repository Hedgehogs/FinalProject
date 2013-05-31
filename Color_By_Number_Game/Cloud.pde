class Cloud {
  color c;
  color s1;
  Cloud() {
    c = color(255);
    s1 = 0;
  }
  void display() {
    noStroke();
    fill(c);
    ellipse(200, 200, 200, 124);
    //    println(mouseX + ", " + mouseY);
    ellipse(198, 156, 100, 100);
    fill(s1);
    text("7", 197, 193);
  }
}

