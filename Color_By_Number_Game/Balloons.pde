class Balloons {
  color c1;
  color c2;
  color s1;
  color s2;
  Balloons() {
    c1 = color(255);
    c2 = color(255);
    s1 = 0;
    s2 = 0;
  }
  void display() {
    strokeWeight(3);
      stroke(0);
  line(550, 570, 450, 270);
  line(550, 570, 550, 270);
    //    line(550, 570, 650, 270);
    fill(c1);
    ellipse(450, 270, 75, 125);
    triangle(469, 323, 460, 360, 490, 330);
    //first balloon, must be filled at same time
    fill(c2);
    ellipse(550, 220, 80, 125);
    triangle(550, 282, 525, 305, 575, 305);
    //second balloon, must be filled at same time
    textSize(25);
    fill(s1);
    text("1", 445, 280);
    //first balloon
    fill(s2);
    text("4", 545, 230);
    //second balloon
  }
}

