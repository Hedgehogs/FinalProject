class Bear {
  int x;
  int y;
  int bodyy;
  int eary;
  int armlength=85;
  int armheight=55;
  int legwidth=108;
  int legheight=60;
  int headdiam=200;
  int bodylength=headdiam-10;
  int bodyheight=headdiam+70;
  int smallbodywidth=bodylength-70;
  int smallbodyheight=bodyheight-80;
  int eyediam=25;
  int noselength=35;
  int noseheight=25;
  int outear=50;
  int inear=28;
  //The color for the:
  //Head
  color cb;
  //Body
  color cb2;
  //right arm
  color cb3;
  //left arm
  color cb4;
  //right foot
  color cb5;
  //left foot
  color cb6;
  //right ear
  color cb7;
  //left ear
  color cb8;
  //Right ear inner
  color cr;
  //left ear inner
  color cr2;
  //Belly inner
  color ct;
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
  Bear() {
    x=width/2;
    y=height/2;
    bodyy=y+235;
    eary=y-100;
    cb = color(255);
    cb2 = color(255);
    cb3 = color(255);
    cb4 = color(255);
    cb5 = color(255);
    cb6 = color(255);
    cb7 = color(255);
    cb8 = color(255);
    cr = color(255);
    cr2 = color(255);
    ct = color(255);
    s1 = 0;
    s2 = 0;
    s3 = 0;
    s4 = 0;
    s5 = 0;
    s6 = 0;
    s7 = 0;
    s8 = 0;
    s9 = 0;
    s10 = 0;
    s11 = 0;
  }
  void display() {
    stroke(0);
    fill(cb);
    ellipse (x, y, headdiam, headdiam); //head
    fill(cb2);
    ellipse (x, bodyy, bodylength, bodyheight); //body
    fill(cb5);
    ellipse (x+95, y+368, legwidth, legheight); //right leg
    fill(cb2);
    ellipse (x-95, y+368, legwidth, legheight); //left leg
    fill(ct);
    ellipse (x, bodyy, smallbodywidth, smallbodyheight); //inner body
    pushMatrix();
    translate (x+128, y+185);
    rotate(radians(-45));
    fill(cb3);
    ellipse (0, 0, armlength, armheight); //right arm
    popMatrix();
    pushMatrix();
    translate (x-128, y+185);
    rotate(radians(45));
    fill(cb4);
    ellipse (0, 0, armlength, armheight); //left arm
    popMatrix();
    fill(0);
    ellipse (x+40, y-20, eyediam, eyediam); //right eye
    ellipse (x-40, y-20, eyediam, eyediam); //left eye
    ellipse(x, y+30, noselength, noseheight); //nose
    fill(cb7);
    ellipse (x+73, eary, outear, outear); //right outer ear
    fill(cb8);
    ellipse (x-73, eary, outear, outear); //left outer ear
    fill(cr);
    ellipse (x+73, eary, inear, inear); //right inner ear
    fill(cr2);
    ellipse (x-73, eary, inear, inear); //left inner ear  
    fill(0);
    strokeWeight(6);
    line(x, y+44, x, y+70); //mouth line 1
    line(x-15, y+70, x+15, y+70); //mouth line 2
    strokeWeight(3);
    fill(0);
    textSize(25); 
    fill(s1);
    text ("6", x-10, y-40); 
    //head
    fill(s2);  
    text("6", x-10, bodyy-100);
    //outer part of stomach
    fill(s3);
    text ("6", x+120, bodyy-40);
    //right arm
    fill(s4);
    text ("6", x-135, bodyy-40);
    //left arm
    fill(s5);
    text ("6", x+88, y+379);
    //right foot
    fill(s6);
    text ("6", x-100, y+379);
    //left foot
    fill(s7);
    line (x+93, eary, x+135, eary);
    text ("6", x+139, eary+8);
    //outer part of right ear
    fill(s8);
    line (x-93, eary, x-135, eary);
    text ("6", x-158, eary+8);   
    //outer part of left ear
    fill(s9);
    text("1", x+65, eary+10);
    //inner part of right ear
    fill(s10);
    text("1", x-80, eary+10);  
    //inner part of left ear
    fill(s11);
    text ("7", x-10, bodyy);
    //inner part of stomach
  }
}

