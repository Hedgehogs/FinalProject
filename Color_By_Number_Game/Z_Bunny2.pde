class Bunny2 {
  int x;
  int y;
  int head;
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
  color c11;
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
  color s11;
  Bunny2() {
    x= 350;
    y=600;
    head = 60;
    c1 = color(255); // head
    c2 = color(255); //right ear
    c3 = color(255); // left ear
    c4 = color(255); // body
    c5 = color(255); // right paw
    c6 = color(255); // left paw
    c7 = color(255); // right leg
    c8 = color(255); // left leg
    c9 = color(255); // carrot
    c10 = color(255); // inner right ear
    c11 = color(255); // inner left ear
    s1=0;
    s2=0;
    s3=0;
    s4=0;
    s5=0;
    s6=0;
    s7=0;
    s8=0;
    s9=0;
    s10=0;
    s11=0;
  }
  void display() {
    stroke(0);
    strokeWeight(3);
    fill(c2);
    ellipse (x+20, y-55, 30, 70); //right ear
    fill(c3);
    ellipse (x-20, y-55, 30, 70); //left ear
    fill(c1);
    ellipse (x, y, head, head); //head
    fill(c4);
    ellipse (x, y+65, 80, 70); //body
    fill(c10);
    ellipse (x+20, y-55, 15, 40); //right inner ear
    fill(c11);
    ellipse (x-20, y-55, 15, 40); //left inner ear
    pushMatrix();
    translate(x+20, y+65);
    rotate(radians(40));
    fill(c5);
    ellipse(0, 0, 15, 25); //right paw
    popMatrix();
    pushMatrix();
    translate(x-20, y+65);
    rotate(radians(-40));
    fill(c6);
    ellipse(0, 0, 15, 25); //left paw
    popMatrix();
    fill(c7);
    ellipse (x+30, y+104, 30, 20); //right leg
    fill(c8);
    ellipse (x-30, y+104, 30, 20); //left leg
    fill(0);
    ellipse (x+13, y-7, 10, 10); //right eye
    ellipse (x-13, y-7, 10, 10); //left eye
    textSize(20);
    line (x, y+7, x, y+20);
    line (x-5, y+20, x+5, y+20);  
    fill(s1);
    text("7", x-5, y-10); //head
    stroke(s2);
    line (380, 539, 430, 539);
    fill(s2);
    text ("7", 434, 542); //outer right ear
    stroke(s3);
    line(327, 568, 290, 568);
    fill(s3);
    text ("7", 281, 570); //outer left ear
    stroke(0);
    fill(s4);
    text("7", x-7, y+60); //body
    textSize(12);
    fill(s5);
    text("7", x+20, y+70); //right arm
    fill(s6);
    text("7", x-23, y+70); //left arm
    fill(s7);
    text("7", x+30, y+108); //right leg
    fill(s8);
    text("7", x-30, y+108); //left leg 
    fill(c9);
    triangle(347, 664, 361, 654, 371, 685);
    fill(s9);
    text("2", 356, 671);
    fill(0);
    triangle(x-7, y+2, x+7, y+2, x, y+12);
    fill(s10);
    text("1", x+15, y-51); //right inner ear
    fill(s11);
    text("1", x-27, y-51); //left inner ear
  }
}

