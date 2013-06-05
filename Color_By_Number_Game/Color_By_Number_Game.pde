PImage img;
//bear
PImage img1;
//background
boolean bearStart;
boolean bunnyStart;

Grass grass;
Sky sky;
Sun sun;
Cloud cloud;
Bear bear;
Balloons balloon;

Bunny bunny; 
Grass2 gr;
Flower flower;
Cloud2 clou;
Bunny2 fred;

float rx=1300;
float rw=100;
float ry=30;
//The variables
int s1 = 3;
//The stroke weight
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
  img = loadImage("Bear Pic.jpg");
  img1 = loadImage("Red Background Pic.png");
  grass = new Grass();
  sky = new Sky();
  sun = new Sun();
  cloud = new Cloud();
  bear = new Bear();
  bunny = new Bunny();
  balloon = new Balloons();
  gr = new Grass2();
  flower = new Flower();
  clou = new Cloud2();
  fred = new Bunny2();
}

void draw() {
  image(img1, 0, 0);
  //background for the start screen
  fill(0, 8, 152);
  textSize(64);
  text("Choose a Drawing!", 400, 100); 
  image(img, 100, 200);
  textSize(52);
  text("Bear", 250, 600);
  //Bear drawing
  rect(800, 200, 450, 350);
  text("Bunny", 950, 600);
  //Bunny drawing
  //Code to get to the bear drawing 
  if (bearStart == true) {
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
    //The balloons
    balloon.display();
  }

  //THE BUNNY DRAWING
  if (bunnyStart == true) {
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
    //The sky in the picture
    sky.display();
    //The sun
    sun.display();
    //The Bunny
    //the grass for the bunny
    gr.display();
    bunny.display();
    //Flower
    flower.display();
    //The cloud
    clou.display();
    //The standing bunny
    fred.display();
  }
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
  if (mousePressed && mouseX>900 && mouseX<1100 && mouseY>55 && mouseY<210 && c==w) {
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
  if (mousePressed && mouseX>600 && mouseX<800 && mouseY>500 && mouseY<700 && c==brown) {
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
  if (mousePressed && mouseX>740 &&  mouseX<850 && mouseY>735 && mouseY<800 && c== brown) {
    bear.cb6 = c;
    bear.s6 = brown;
  }
  //the left foot
  if (mousePressed && mouseX>550 && mouseX<700 && mouseY>735 && mouseY<800 && c==brown) {
    bear.cb5 = c;
    bear.s5 = brown;
    //The inner belly
  }
  if (mousePressed && mouseX>640 && mouseX<760 && mouseY>540 && mouseY<730 && c==tan) {
    bear.ct =c;
    bear.s11 =tan;
  }
  //The left ear
  if (mousePressed && mouseX>750 && mouseX<800 && mouseY>275 && mouseY<325 && c==brown) {
    bear.cb8 = c;
    bear.s8 = b;
  }
  //The right ear
  if (mousePressed && mouseX>600 && mouseX<650 && mouseY>275 && mouseY<325 && c==brown) {
    bear.cb7 = c;
    bear.s7 = b;
  }
  //The left inner ear
  if (mousePressed && mouseX>760 && mouseX<790 && mouseY>285 && mouseY<313 && c==tan) {
    bear.cr2 = c;
    bear.s9 =tan;
  }
  //The right inner ear
  if (mousePressed && mouseX>610 && mouseX<640 && mouseY>285 && mouseY<313 && c==tan) {
    bear.cr =c;
    bear.s10 =tan;
  }
  //balloons- first 
  if (mousePressed && mouseX>410 && mouseX<490 && mouseY>210 && mouseY<330 && c==r) {
    balloon.c1 = c;
    balloon.s1 = r;
  }
  // second balloon
  if (mousePressed && mouseX>510 && mouseX<590 && mouseY>160 && mouseY<280 && c==g) {
    balloon.c2 = c;
    balloon.s2 = g;
  } 

  //THE BUNNY DRAWING
  //The head of the bunny
  if (mousePressed && mouseX>660 && mouseX<735 && mouseY>430 && mouseY<500 && c==w) {
    bunny.c1 = c;
    bunny.s1 = w;
  }
  //The body of the bunny 
  if (mousePressed && mouseX>550 && mouseX<650 && mouseY>480 && mouseY<560 && c==w) {
    bunny.c2 = c;
    bunny.s2 = w;
  }
  //The right foot of the bunny
  if (mousePressed && mouseX>650 && mouseX<700 && mouseY>540 && mouseY<570 && c==w) {
    bunny.c3 = c;
    bunny.s3 = w;
  }
  //The left foot of the bunny
  if (mousePressed && mouseX>550 && mouseX<600 && mouseY>545 && mouseY<580 && c==w) {
    bunny.c4 = c;
    bunny.s4 = w;
  }
  //The tail of the bunny
  if (mousePressed && mouseX>520 && mouseX<550 && mouseY>480 && mouseY<510 && c==w) {
    bunny.c5 =c;
    bunny.s5 = w;
  }
  //   The right ear of the bunny
  if (mousePressed && mouseX>720 && mouseX<750 && mouseY>380 && mouseY<440 && c==w) {
    bunny.c6 = c;
    bunny.s6 = b;
  }
  //The left ear of the bunny
  if (mousePressed && mouseX>650 && mouseX<680 && mouseY>380 && mouseY<440 && c==w) {
    bunny. c7 = c;
    bunny.s7 =b;
  }
  //The  nose of the bunny
  if (mousePressed && mouseX>690 && mouseX<706 && mouseY>475 && mouseY<485 && c==r) {
    bunny.c8 = c;
    bunny.s8 =b;
  }
  //The right inner ear
  if (mousePressed && mouseX>725 && mouseX<737 && mouseY>390 && mouseY<430 && c==r) {
    bunny.c9 = c;
    bunny.s9 = b;
  }
  //The left inner ear
  if (mousePressed && mouseX>660 && mouseX<675 && mouseY>390 && mouseY<430 && c==r) {
    bunny.c10 = c;
    bunny.s10 = b;
  }
  //The Bunny grass
  if (mousePressed && ((mouseX>0 && mouseX<950) || (mouseX>1050 && mouseX<1250))  && mouseY>height-250 && mouseY<height && c==g) {
    gr.c1 = c;
    gr.s1 = g;
  }
  //The middle of flower
  if (mousePressed && mouseX>1015 && mouseX<1100 && mouseY>415 && mouseY<500 && c==y) {
    flower.c8 = c;
    flower.s8 =y;
  }
  //the top petal
  if (mousePressed && mouseX>1000 && mouseX<1100 && mouseY>350 && mouseY<430 && c==r) {
    flower.c4 = c;
    flower.s4 = r;
  }
  //the left petal
  if (mousePressed && mouseX>940 && mouseX<1040 && mouseY>410 && mouseY<510 && c==r) {
    flower.c7 =c;
    flower.s7 =r;
  }
  //the right petal
  if (mousePressed && mouseX>1075 && mouseX<1175 && mouseY>400 && mouseY<500 && c==r) {
    flower.c5 =c;
    flower.s5 =r;
  }
  //the bottom petal
  if (mousePressed && mouseX>1015 && mouseX<1115 && mouseY>480 && mouseY<580 && c==r) {
    flower.c6 = c;
    flower.s6 = r;
  }
  //the stem
  if (mousePressed && mouseX>1050 && mouseX<1070 && mouseY>570 && mouseY<height && c==g) {
    flower.c3 = c;
    flower.s3 = g;
  }
  //the right leaf
  if (mousePressed && mouseX>1070 && mouseX<1170 && mouseY>615 && mouseY<655 && c==g) {
    flower.c2 = c;
    flower.s2 = g;
  }
  //the left leaf
  if (mousePressed && mouseX>950 && mouseX<1050 && mouseY>615 && mouseY<655 && c==g) {
    flower.c1 = c;
    flower.s1 = g;
  }
  //The second cloud for coloring
  if (mousePressed && mouseX>900 && mouseX<1100 && mouseY>55 && mouseY<210 && c==w) {
    clou.c =c;
    clou.s1 = w;
  }
  //FRED!!!
  //the head
  if (mousePressed && mouseX>320 && mouseX<380 && mouseY>570 && mouseY<630 && c==tan) {
    fred.c1= c;
    fred.s1 = tan;
  }
  //the right ear
  if (mousePressed && mouseX>350 && mouseX<380 && mouseY>500 && mouseY<580 && c==tan) {
    fred.c2 = c;
    fred.s2 = b;
  }
  // the left ear
  if (mousePressed && mouseX>315 && mouseX<345 && mouseY>500 && mouseY<580 && c==tan) {
    fred.c3 = c;
    fred.s3 = g;
  }
  //the body
  if (mousePressed &&  mouseX>310 && mouseX<390 && mouseY>630 && mouseY<700 && c==tan) {
    fred.c4 = c;
    fred.s4 = tan;
  }
  //right paw
  if (mousePressed && mouseX>360 && mouseX<380 && mouseY>650 && mouseY<675 && c==tan) {
    fred.c5 = c;
    fred.s5 =tan;
  }
  //left paw
  if (mousePressed && mouseX>320 && mouseX<340 && mouseY>650 && mouseY<675 && c==tan) {
    fred.c6 = c;
    fred.s6= tan;
  }
  //right leg
  if (mousePressed && mouseX>365 && mouseX<395 && mouseY>695 && mouseY<715 && c==tan) {
    fred.c7 = c;
    fred.s7 = tan;
  }
  //left leg
  if (mousePressed && mouseX>305 && mouseX<335 && mouseY>695 && mouseY<715 && c==tan) {
    fred.c8 = c;
    fred.s8 = tan;
  }
  //carrot
  if (mousePressed && mouseX>350 && mouseX<370 && mouseY>650 && mouseY<680 && c==o) {
    fred.c9 = c;
    fred.s9 = o;
  }
  //right inner ear
  if (mousePressed && mouseX>360 && mouseX<375 && mouseY>525 && mouseY<565 && c==r) {
    fred.c10 =c;
    fred.s10 = r;
  }
  //left inner ear
  if (mousePressed && mouseX>320 && mouseX<335 && mouseY>525 && mouseY<565 && c==r) {
    fred.c11 = c;
    fred.s11=r;
  }
  println(mouseX);
}
//The functions that make c eqaul a certain color when the mouse is pressed on the square of that color
void mousePressed() {
  if (mouseX>100 && mouseX<550 && mouseY>200 && mouseY<550) {
    bearStart = true;
  }
  if (mousePressed && mouseX>800 && mouseX<1250 && mouseY>200 && mouseY<550) {
    bunnyStart =true;
  }
  if (mouseX> rx && mouseX<rx+50 && mouseY>ry && mouseY<ry+50) {
    //    println("red");
    c = color(r);
  } 
  if (mouseX>rx && mouseX<rx+50 && mouseY> ry+100 && mouseY<ry+150) {
    //    println("orange");
    c = color(o);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+200 && mouseY<ry+250) {
    //    println("yellow");
    c= color(y);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+300 && mouseY<ry+350) {
    //    println("green");
    c = color(g);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+400 && mouseY<ry+450) {
    //    println("blue");
    c = color(b);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+500 && mouseY<ry+550) {
    //    println("brown");
    c = color(brown);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+600 && mouseY<ry+650) {
    //    println("tan");
    c = color(tan);
  }
  if (mouseX>rx && mouseX<rx+50 && mouseY>ry+700 && mouseY<ry+750) {
    //    println("white");
    c = color(w);
  }
}

