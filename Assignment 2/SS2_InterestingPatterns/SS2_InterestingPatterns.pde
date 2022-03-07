//James Lee
//Interesting Patterns
//Be prepared for the blinding lights

int elX=3;
float elY=1.5;
float r;
float g;
float b;

void setup(){
  size (1000,1000);
}

void mousePressed() {
  background(255);
  stroke(0);
  fill(255,0,0);
  rectMode(CENTER);
  rect(mouseX,mouseY,10,10);
}

void draw() {
  if (mouseX>=500) {
    background(0,255,0);
    ellipse(50, 100, 200, 300);
  } else if (mousePressed==true) {
    mousePressed();
  } else {
    background(0);
    r=random(255);
    g=random(255);
    b=random(255);
    fill(r, g, b);
    ellipse(500,500,50+elX,50+elY);
    elX+=1;
    elY+=0.5;
  }
}
