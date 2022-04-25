//James Lee
//Scary Turns

import processing.serial.*;

Serial myPort;
int val=0;
float r,g,b=0;

PImage girl;

int rollX, rollY=0;

void setup() {
  size(400,400);
  
  printArray(Serial.list());
  String portName=Serial.list()[1];
  myPort=new Serial(this, portName,9600);
  
  r=random(255);
  g=random(255);
  b=random(255);
  
  girl=loadImage("scary_maze_girl.jpg");
  girl.resize(400,400);
}

void draw() {
  if (myPort.available()>0) {
    val=myPort.read();
  }
  
  if (val>=0 && val <225) {
    background(255);
    fill(r,g,b);
    ellipse(val, height/2, 50,50);
    ellipse(width/2, val, 50, 50);
    ellipse(val, height, 50, 50);
    ellipse(width, val, 50, 50);
  } else {
    background(girl);
  }
}
