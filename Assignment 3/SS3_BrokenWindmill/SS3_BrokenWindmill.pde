//James Lee
//Broken Spinner
//EPILEPSY WARNING

int x=0;
int y=0;
boolean circleButton=false;
color baseColor=255;

void setup() {
  size(700, 700);
}

void draw() {
  background(255);
  for (int i=25; i<=width; i+=25) {
    fill(0, 255, 0);
    ellipse(i, height/2, 50, 50);
    for (int j=25; j<=height; j+=25) {
      fill(255, 255, 0);
      ellipse(width/2, j, 50, 50);
    }
  }

  if (circleButton) {
    background(255);
  }
  
  if(mouseX>=100) {
    circleButton=!circleButton;
  }
}

/*
void drawDiagonal() {
 background(255);
 for (int i=25; i<=width; i+=25) {
 fill(255,255,0);
 ellipse(x,y, 50, 50);
 x+=25;
 y+=25;
 for (int j=25; j<=height; j=+25) {
 fill(0,255,0);
 ellipse(0, 700, 50, 50);
 x+=25;
 y-=25;
 }
 }
 }
 }
 */
