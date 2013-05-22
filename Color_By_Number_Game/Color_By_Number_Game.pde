float rx=1300;
float rw=100;
float ry=75;
//The variables
int s1 = 3;
//The stroke weights
color c;
color r = color(255, 0, 0);
color o = color(255, 132, 0);
color y = color(255, 247, 0);
color g = color(0, 255, 0);
color b = color(0, 0, 255);
color brown = color(113, 51, 11);
color tan = color(234, 192, 166);
//The colors
void setup() {
  size(1400, 800);
}

void draw() {
  background(255);
  strokeWeight(5);
  stroke(0);
  line(width-150, 0, width-150, height);
  fill(r);
  rect(rx, ry, 50, 50);
  fill(o);
  rect(rx, ry+100, 50, 50);
  fill(y); 
  rect(rx, ry+200, 50, 50);
  fill(g); 
  rect(rx, ry+300, 50, 50);
  fill(b);
  rect(rx, ry+400, 50, 50);
  fill(brown);
  rect(rx, ry+500, 50, 50);
  fill(tan);
  rect(rx, ry+600, 50, 50);
  fill(0);
  textSize(25);
  strokeWeight(3);
  text("1", rx-30, ry+30);
  text("2", rx-30, ry+130);
  text("3", rx-30, ry+230);
  text("4", rx-30, ry+330);
  text("5", rx-30, ry+430);
  text("6", rx-30, ry+530);
  text("7", rx-30, ry+630);
  //The drawing
  fill(c);
  line(0, height-200, width-150, height-200);
  if (mousePressed && mouseX>0 && mouseX<width-150 && mouseY>height-200 && mouseY<height) {
    println("touch");
    fill(c);
    rect(0, height-200, 1250, 200);
  }
}

void mousePressed() {
  if (mouseX> rx && mouseX<rx+50 && mouseY>ry && mouseY<ry+50) {
    println("red");
    c = color(r);
  } 
  if (mouseX>rx && mouseX<rx+50 && mouseY> ry+100 && mouseY<ry+150) {
    println("orange");
    c = color(o);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+200 && mouseY<ry+250) {
    println("yellow");
    c= color(y);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+300 && mouseY<ry+350) {
    println("green");
    c = color(g);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+400 && mouseY<ry+450) {
    println("blue");
    c = color(b);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+500 && mouseY<ry+550) {
    println("brown");
    c = color(brown);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+600 && mouseY<ry+650) {
    println("tan");
    c = color(tan);
  }
}

