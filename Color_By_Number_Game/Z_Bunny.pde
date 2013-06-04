class Bunny {
  int x;
  int y;
  color c1;
  color c2;
  color c3;
  color c4;
  color c5;
  color c6;
  color c7;
  color c8;
  color c9;
  color c10;
  color s1;
  color s2;
  color s3;
  color s4;
  color s5;
  color s6;
  color s7;
  color s8;
  color s9;
  color s10;
  Bunny() {
    x=width/2;
    y=height/2;
    c1 = color(255); //head
    c2 = color(255); // body
    c3 = color(255); // right foot
    c4 = color(255); // left foot
    c5 = color(255); // tail
    c6 = color(255); // right ear
    c7 = color(255); // left ear 
    c8 = color(255); // nose
    c9 = color(255); // right inner ear
    c10 = color(255); // left inner ear
    s1 = 0; // head
    s2 = 0; // body
    s3 = 0; // right foot
    s4 = 0; // left foot
    s5 = 0; // tail
    s6 = 0; // right ear
    s7 = 0; // left ear 
    s8 = 0; // nose
    s9 = 0; // right inner ear
    s10 = 0; // left inner ear
  }
  void display() {
    stroke(0);
    strokeWeight(3);
    fill(c1);
    ellipse (x, y+70, 74, 74); //head
    fill(c2);
    ellipse (x-80, y+120, 140, 73); //body
    fill(c4);
    ellipse (x-20, y+158, 50, 30); //front paw
    pushMatrix();
    translate (x-120, y+164);
    rotate (radians(20));
    fill(c3);
    ellipse (0, 0, 50, 30); //back paw, rotated slightly
    popMatrix();
    fill(c5);
    ellipse (x-158, y+98, 30, 30); //tail
    pushMatrix();
    translate (x-32, y+13);
    rotate(radians(-25));
    fill(c7);
    ellipse (0, 0, 25, 60); //left outer ear
    fill(c10);
    ellipse (0, 0, 10, 40); //Left inner ear
    popMatrix();
    pushMatrix();
    translate (x+32, y+12);
    rotate(radians(25));
    fill(c6);
    ellipse (0, 0, 25, 60); //Right outer ear
    fill(c9);
    ellipse (0, 0, 10, 40); //Right inner ear
    popMatrix();
    fill(0);
    ellipse (x+15, y+60, 10, 10); //Right eye
    ellipse (x-15, y+60, 10, 10); //Left eye
    fill(c8);
    ellipse (x, y+80, 14, 10); //Nose
    fill(0);
    line(x, y+85, x, y+95); //Nose to mouth line
    line(x-5, y+95, x+5, y+95); //Mouth line 1
    line(x+7, y+80, x+22, y+80); //whisker 1
    line(x-7, y+80, x-22, y+80); //whisker 2
    pushMatrix();
    translate (x+7, y+80);
    rotate(radians(-25));
    line(0, 0, 16, 0); //whisker 3
    popMatrix();
    pushMatrix();
    translate (x-7, y+80);
    rotate(radians(25));
    line(0, 0, -16, 0); //whisker 4
    popMatrix();
    pushMatrix();
    translate(x+7, y+80);
    rotate(radians(38));
    strokeWeight(1);
    stroke(s8);
    line(-6, 6, 65, 0);
    popMatrix();
    stroke(s9);
    line (x+32, y+12, x+72, y+12);//right inner
    stroke(s10);
    line(x-32, y+12, x-72, y+12); // left inner
    stroke(s6);
    line(x+45, y-4, x+99, y-4); //right ear
    stroke(s7);
    line(x-45, y-4, x-99, y-4); //left ear
    fill(0);
    textSize(18);
    //Here is where all of the numbers are.Everything labeled 1 is the same color, even if 1 isn't the right number.
    fill(s1);
    text("8", x-4, y+60); //This is the head's color-the number in the forehead
    fill(s2);
    text("8", x-80, y+120); //This is the body's number
    fill(s3);
    text("8", x-22, y+162); //This is the right foot's number
    fill(s4);
    text("8", x-122, y+168); //This is the left foot
    fill(s5);
    text("8", x-162, y+104); //Tail
    fill(s6);
    text("8", x+102, y-2); //Right ear
    fill(s7);
    text("8", x-113, y-2); //Left ear
    fill(s8);
    text("1", x+65, y+128); //nose
    fill(s9);
    text ("1", x+79, y+16); //right inner ear
    fill(s10);
    text("1", x-83, y+14); //left inner ear
  }
}

