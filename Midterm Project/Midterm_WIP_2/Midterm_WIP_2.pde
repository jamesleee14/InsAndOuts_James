//James Lee
//Midterm Project

String state="pregame";
PImage ocean;
float r, g, b;
int startTime=0;
int timer=5000;

void setup() {
  background(255);
  size (1000, 1000);
  r=random(255);
  g=random(20, 100);
  b=random(0, 147);
  ocean=loadImage("ocean.jpg");
  ocean.resize(1000, 1000);
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

  if (state=="pregame") {
    background(ocean);
    textSize(75);
    fill(r, g, b);
    text("The Hunt for the Squid", 105, 150);
    textSize(75);
    fill(211, 211, 211);
    text("Press Enter to begin.", 140, 500);
  } else if (state=="introGame") {
    textSize(50);
    text("Greetings fellow diver. In today's adventure, we are going to be finding a squid. This squid is rare. What makes it rare you ask? It's rare because once you find this squid, you get invited to play a game for millions of dollars. But since it's millions of dollars, spots are limited.", width/2, height/2);
    textAlign(CENTER, CENTER);
  }
}

void keyPressed() {
  if (state=="pregame") {
    state="introGame";
  } else if (state=="introGame") {
    state="gameplay";
  } else if (state=="gameplay") {
    state="introGame";
  }
}
