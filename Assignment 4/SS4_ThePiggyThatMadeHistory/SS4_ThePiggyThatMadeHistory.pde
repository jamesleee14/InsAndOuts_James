//James Lee
//The Piggy That Made History

PImage piggy;
PImage moon;
PFont font;

void setup() {
  background(128);
  size (700, 700);
  piggy=loadImage("piggy.jpg");
  moon=loadImage("moon.jpg");
  moon.resize(700,700);
  font=createFont("AgencyFB-Reg-48.vlw", 32);
  textFont(font);
}

void draw() {
  if (keyPressed==true) {
    background(0);
    image(moon, 0,0);
    textSize(30);
    text("'That's one extremely long oink for pig-kind future...'", 10, 50);
    piggy.resize(300,300);
    image(piggy,200,225);
  } else {
    image(moon, 0,0);
    textSize(25);
    text("'That's one oink for pig-kind...'", 200, 50  );
    piggy.resize(100,100);
    image(piggy, 300, 300);
  }
}
