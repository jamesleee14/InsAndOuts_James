//James Lee
//Midterm Project

PImage piggy;
float r,g,b;
int startTime=0;
int timer=5000;

void setup() {
  background(255);
  size (1000,1000);
  r=random(255);
  g=random(255);
  b=random(255);
  piggy=loadImage("piggy.jpg");
  piggy.resize(1000,1000);
}

void draw() {
  /*
  what i wanted to include:
  -mouseX,mouseY
  -millis()
  -PImage
  -if else, for loops
  -random
  -mousePressed, keyPressed
  -text, textSize, resize
  */

  for (int i=1; i<=10; i++){
    println(i);
  }
  
  if (mouseX>=700) {
    background(piggy);
  } else {
    background(255);
    fill(r,g,b);
    ellipse (mouseX,mouseY,30,30);
  }
  
  startTime=millis();
  if (startTime>timer) {
    background(0);
    ellipse (540, 150, 100, 100);
    //to color shape, fill comes first before shape
    fill(0);
    ellipse (540, 150, 80, 80);
    fill(255, 20, 147);
    stroke(20);
    triangle(540, 150, 450, 250, 630, 250);
    fill(0);
    triangle(540,170, 480, 235,600, 235);
    fill(0, 100, 0);
    stroke(5);
    rect(450, 260, 180,145);
    fill(0);
    rect(455, 265, 170, 135);
    fill(255);
    ellipse(540, 400, 100, 100);
    fill(0);
    ellipse(540, 400, 75, 75);
  }
}
