//James Lee
//Controlled Lights

import processing.serial.*;

Serial myPort;

void setup() {
  size (500,500);
  printArray(Serial.list());
  String portName=Serial.list()[1];
  myPort=new Serial(this, portName, 9600);
}

void draw() {
  if (mousePressed==true) {
    background(255,0,0);
    myPort.write(1);
  } else {
    background(0);
    myPort.write(0);
  }
}
