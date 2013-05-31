class Sun {
  color c;
  color c2;
  color c3;
  color c4;
  color s1;
  color s2;
  color s3;
  color s4;
  Sun() {
    c= color(255);
    c2 = color(255);
    c3 = color(255);
    c4 = color(255);
    s1 = 0;
    s2 = 0;
    s3 = 0;
    s4 = 0;
  }
  void display() { 
    fill(c);  
    ellipse(0, 0, 300, 300); 
    fill(c4);  
    triangle(183, 28, 330, 66, 174, 64);  
    fill(c3);
    triangle(168, 144, 128, 136, 210, 214); 
    fill(c2); 
    triangle(53, 182, 20, 190, 36, 280);
    fill(s1);
    text("3", 50, 50);
    fill(s2);
    text("2", 30, 225);
    fill(s3);
    text("2", 163, 170);
    fill(s4);
    text("2", 190, 60);
  }
}

