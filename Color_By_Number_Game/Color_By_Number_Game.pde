Grass grass;
Sky sky;
Sun sun;
Cloud cloud;
Bear bear;

float rx=1300;
float rw=100;
float ry=30;
//The variables
int s1 = 3;
//The stroke weights
color c;
color r = color(255, 0, 0);
color o = color(255, 132, 0);
color y = color(255, 247, 0);
color g = color(0, 255, 0);
color b = color(134, 230, 255);
color brown = color(113, 51, 11);
color tan = color(234, 192, 166);
color w = color(255);
//The colors
void setup() {
  size(1400, 800);
  grass = new Grass();
  sky = new Sky();
  sun = new Sun();
  cloud = new Cloud();
  bear = new Bear();
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
  fill(w);
  rect(rx, ry+700, 50, 50);
  fill(0);
  textSize(25);
  strokeWeight(s1);
  text("1", rx-30, ry+30);
  text("2", rx-30, ry+130);
  text("3", rx-30, ry+230);
  text("4", rx-30, ry+330);
  text("5", rx-30, ry+430);
  text("6", rx-30, ry+530);
  text("7", rx-30, ry+630);
  text("8", rx-30, ry+730);
  //The drawing
  //The grass in the picture
  grass.display();
  //The sky in the picture
  sky.display();
  //The sun
  sun.display();
  //The cloud
  cloud.display();
  //The bear
  bear.display();
  //The Grass for coloring
  if (mousePressed && mouseX>0 && mouseX<width-150 && mouseY>height-200 && mouseY<height && c==g) {
    println("touch");
    grass.c = c;
    grass.s1 = g;
  }
  //The sky for coloring
  if (mousePressed && mouseX>0 && mouseX<width-150 && mouseY>0 && mouseY<height-200 && c==b) {
    println("Sky");
    sky.c = c;
    sky.s1 = b;
  }
  //the circle of the sun for coloring
  if (mousePressed && mouseX>0 && mouseX<300 && mouseY>0 && mouseY<300 && c==y) {
    println("sun");
    sun.c = c;
    sun.s1 = y;
  }
  //The rays of the sun for coloring
  if (mousePressed&& mouseX>25 && mouseX<46 && mouseY>186 && mouseY<259 && c==o) {
    sun.c2 = c;
    sun.s2 = o;
  }
  if (mousePressed && mouseX>125 && mouseX<190 && mouseY>141 && mouseY<198 && c==o) {
    sun.c3 =c;
    sun.s3=o;
  }
  if (mousePressed && mouseX>198 && mouseX<300 && mouseY>30 && mouseY<63 && c==o) {
    sun.c4 =c;
    sun.s4=o;
  }
  //The cloud for coloring
  if (mousePressed && mouseX>1000 && mouseX<1200 && mouseY>150 && mouseY<274 && c==w) {
    cloud.c =c;
    cloud.s1 = w;
  }
  //The bear for coloring
  //The bear's head
  if (mousePressed && mouseX>600 && mouseX<800 && mouseY>300 && mouseY<500 && c== brown) {
    bear.cb = c;
    bear.s1 = brown;
  }
  //The bear's body
  if (mousePressed && ((mouseX>600 && mouseX<639 && mouseY>500 && mouseY<770 ) || (mouseX>760 && mouseX<794 && mouseY>500 && mouseY<770)) && c==brown) {
    bear.cb2 = c;
    bear.s2 = brown;
  }
  //The right arm
  if (mousePressed && mouseX>796 && mouseX<860 && mouseY>550 && mouseY<620 && c==brown) {
    bear.cb3 = c;
    bear.s3 = brown;
  }
  //The left arm
  if (mousePressed && mouseX>535 && mouseX<605 && mouseY>550 && mouseY<620 && c==brown) {
    bear.cb4 = c;
    bear.s4 = brown;
  }
  //The right foot
  if (mousePressed && mouseX>740 &&  mouseX<850 && mouseY>735 && mouseY<800 && c== brown){
    bear.cb5 = c;
  bear.s5 = brown;
}
//the left foot
if (mousePressed && mouseX>550 && mouseX<700 && mouseY>735 && mouseY<800 && c==brown) {
  bear.cb6 = c;
  bear.s6 = brown;
}

println(mouseY);
}
//The functions that make c eqaul a certain color when the mouse is pressed on the square of that color
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
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+700 && mouseY<ry+750) {
    println("white");
    c = color(w);
  }
}

