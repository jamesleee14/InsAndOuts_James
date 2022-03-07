//James Lee
//Mysterious Patterns

PImage piggy;
PImage vaporwave;

void setup() {
  size(750,750);
  piggy=loadImage("piggy.jpg");
  piggy.resize(750,750);
  vaporwave=loadImage("maxresdefault-1.jpg");
  background(piggy);
}

void draw(){
  if (keyPressed==true) {
    customBackground();
  } else if (mousePressed==true) {
    mousePressed();
  } else {
    loops();
  }
}

void customBackground() {
  vaporwave.resize(750,750);
  image(vaporwave,0,0);
}

void loops() {
  for (int i=0; i<=250; i+=10) {
    ellipse(i, 20, 30, 30);
    ellipse(i, 700, 30,30);
  }
  
  for (int i=250; i<=500; i+=20){
    rect(i, 50, 40, 40);
    rect(i, 625, 40, 40);
  }
  
  for (int i=500; i<=750; i+=30) {
    ellipse(i, 20, 30, 30);
    ellipse(i, 700, 30, 30);
  }
}


void mousePressed(){
  background(0);
  fill(mouseX,mouseY,0);
  ellipse(mouseX,mouseY,mouseX,mouseY);
}
