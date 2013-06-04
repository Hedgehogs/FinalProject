class Flower {
  float a;
  float x;
  color c1;
  color c2;
  color c3;
  color c4;
  color c5;
  color c6;
  color c7;
  color c8;
  color s1;
  color s2;
  color s3;
  color s4;
  color s5;
  color s6;
  color s7;
  color s8;

  Flower() {
    a= 100;
    x = 650;
    c1 = color(255);
    c2 = color(255);
    c3 = color(255);
    c4 = color(255);
    c5 = color(255);
    c6 = color(255);
    c7 = color(255);
    c8 = color(255);
    s1 =0;
    s2 =0;
    s3 =0;
    s4 =0;
    s5 =0;
    s6 =0;
    s7 =0;
    s8 =0;
  }
  void display() {
    fill(c1);
    ellipse(346+8+x, 635, a, 40); //left leaf
    fill(c2);
    ellipse(454+8+x, 635, a, 40); //right leaf
    fill(c3);
    rect(400+x, 470, 20, 350); //stem
    fill(c4);
    ellipse(400+x, 400, a, a); //top petal
    fill(c5);
    ellipse(472+x, 450, a, a); //right petal
    fill(c6);
    ellipse(417+x, 526, a, a); //bottom petal
    fill(c7);
    ellipse(340+x, 466, a, a); //left petal
    fill(c8);
    ellipse(408+x, 460, 80, 80); //middle
    fill(0);
    textSize(29);
    fill(s8);
    text ("3", 400+x, 470); //middle
    fill(s3);
    text("4", 402+x, 680); //stem
    fill(s1);
    text ("4", 346+4+x, 645); //left leaf
    fill(s2);
    text ("4", 454+8+x, 645); //right leaf
    fill(s4);
    text ("1", 400+x, 400); // top petal
    fill(s5);
    text("1", 472+x, 450); //right petal
    fill(s6);
    text("1", 410+x, 540); //bottom petal
    fill(s7);
    text("1", 340+x, 466); //left petal
  }
}

