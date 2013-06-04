class Flower {
  float a;
  color c1;
  color c2;
  color c3;
  color c4;
  color s1;
  color s2;
  color s3;
  color s4;

  Flower() {
    a= 100;
    c1 = color(255);
    c2 = color(255);
    c3 = color(255);
    c4 = color(255);
  }
  void display() {
    fill(c1);
    ellipse(346+8, 635, a, 40); //left leaf
    ellipse(454+8, 635, a, 40); //right leaf
    rect(width/2, height/2+70, 20, 350); //stem
    ellipse(width/2, height/2, a, a); //top petal
    ellipse(472, 450, a, a); //right petal
    ellipse(417, 526, a, a); //bottom petal
    ellipse(340, 466, a, a); //left petal
    ellipse(width/2+8, height/2+60, 80, 80); //middle
    fill(0);
    textSize(29);
    text ("3", width/2, height/2+70); //middle
    text("4", width/2+2, height/2+280); //stem
    text ("4", 346+4, 645); //left leaf
    text ("4", 454+8, 645); //right leaf
    text ("1", width/2, height/2); // top petal
    text("1", 472, 450); //right petal
    text("1", 410, 540); //bottom petal
    text("1", 340, 466); //left petal
  }
}

