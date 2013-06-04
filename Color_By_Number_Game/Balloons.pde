class Balloons {
  color c1;
  color c2;
  color c3;
  color s1;
  color s2;
  color s3;
  Balloons() {
    c1 = color(255);
    c2 = color(255);
    c3 = color(255);
    s1 = 0;
    s2 = 0;
    s3 = 0;
  }
  void display() {
    strokeWeight(3);
    fill(0);
    line(550, 570, 450, 270);
    line(550, 570, 550, 270);
    line(550, 570, 650, 270);
    fill(c1);
    ellipse(450, 270, 75, 125);
    triangle(469, 323, 460, 360, 490, 330);
    //first balloon, must be filled at same time
    fill(c2);
    ellipse(550, 220, 80, 125);
    triangle(550, 282, 525, 305, 575, 305);
    //second balloon, must be filled at same time
    fill(c3);
    ellipse(650, 270, 75, 125);
    triangle(633, 325, 610, 330, 650, 360);
    //third balloon, must be filled at same time
    textSize(25);
    fill(0);
    text("5", 445, 280);
    //first balloon
    text("4", 545, 230);
    //second balloon
    text("2", 645, 280);
    //third balloon
  }
}

