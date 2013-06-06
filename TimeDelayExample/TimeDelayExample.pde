Button button;
boolean timerRunning=false;
int currentTime, oldTime;
int thresholdTime=3000;
void setup() {
  size(500, 500);
  background(0);
  button = new Button(width/2, int(height*.8), 150, 60);
}

void draw() {
  button.display();
  button.detect(mouseX, mouseY);
  timer();
}
void mousePressed() {
  if (button.detect(mouseX, mouseY)) {
    timerRunning=true;
    currentTime=millis();
    oldTime=currentTime;
  }
}
void timer() {
  println(currentTime-oldTime);
  if (timerRunning) {
    currentTime=millis();
    if (currentTime-oldTime>=thresholdTime) {
      background(random(50), random(50), random(50));
      timerRunning=false;
    }
  }
}

class Button {
  int x, y;
  int w, h;
  float rad;
  color c;

  Button(int tx, int ty, int tw, int th) {
    x=tx;
    y=ty;
    w=tw;
    h=th;
    rad=min(w, h)*.4;
    c=color(0, 100, 255);
  }
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, w, h, rad);
  }
  boolean detect(int mx, int my) {
    if (mx>x-w/2 && mx<x+w/2 && my>y-h/2 && my<y+h/2) {
      c=color(255, 50, 100);
      return true;
    } else {
      c=color(0, 100, 255);
      return false;
    }
  }
}

