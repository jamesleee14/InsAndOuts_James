//James Lee
//Uncomfortable

PImage piggy, vaporwave, trees;
int x, y=0;
int timerStart=0;
int timer1=5000;
int timer2=7000;
float r, g, b=0;

void setup() {
  background(255);
  size (700,700);
  piggy=loadImage("piggy.jpg");
  piggy.resize(200,200);
  vaporwave=loadImage("maxresdefault-1.jpg");
  vaporwave.resize(200,200);
  trees=loadImage("AASD.jpg");
  trees.resize(200,200);
  r=random(255);
  g=random(255);
  b=random(255);
}

void draw() {
  timerStart=millis();
  
  if (timerStart>timer2) {
    collage();
  } else if (timerStart>timer1) {
    seperation();
  } else {
    background(r,g,b);
  }
  println(timerStart);
}

void collage() {
  background(r, g, b);
  image(piggy, 24, 325);
  image(vaporwave, 534, 35);
  image(trees, 421, 412);
  fill(35, 124, 123);
  triangle(12,124,325,125,634,623);
  fill(132, 123, 132);
  ellipse( 231, 523, 213, 234);
  fill(13, 123, 23);
  rectMode(CENTER);
  rect(312, 235,62,43);
}

void seperation() {
  background(r,g,b);
  for (int i=0; i<700; i+=50) {
    ellipse(x, y, 35, 35);
    x+=40;
    y+=40;
  }
}
