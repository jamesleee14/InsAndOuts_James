//James Lee
//Midterm Project

import processing.sound.*;
SoundFile music;

String state="pregame";
PImage ocean;
PImage land;
float r, g, b;
int startTime=0;
int timer=5000;
PFont font;

float y1=555;
float w=50;
float h=80;

float y2=575;
float y3=625;
float y4=600;

void setup() {
  background(255);
  size (1500, 1000);
  r=random(255);
  g=random(20, 100);
  b=random(0, 147);
  ocean=loadImage("ocean.jpg");
  ocean.resize(1500, 1000);
  font=loadFont("Chiller-Regular-48.vlw");
  textFont(font,48);
  land=loadImage("land.jpg");
  land.resize(1500,1000);
  
  music=new SoundFile(this, "underTheSea.mp3");
  music.loop();
  music.amp(0.5);
}

void draw() {
  if (state=="pregame") {
    background(ocean);
    textAlign(CENTER);
    textSize(100);
    fill(r, g, b);
    text("The Hunt for the Squid", width/2, 300);
    textSize(100);
    fill(211, 211, 211);
    text("Press Enter to begin.", width/2, 600);
  } else if (state=="intro") {
    background(ocean);
    textSize(75);
    fill(255);
    text("Greetings fellow diver. In today's adventure,", 750, 225); 
    text("we are going to be finding a squid.", 750, 300);
    fill(255, 20, 147);
    text("This squid is rare. What makes it rare you ask?", 750, 375);
    text("It's rare because once you find this squid,", 750, 450);
    fill(0, 255, 0);
    text("you get invited to play a game for millions of dollars.",750, 525); 
    text("But since it's for millions of dollars, spots are limited.", 750,600);
    fill(255);
    text("Are you ready to begin the adventure?", 750, 675);
    text("Press Enter to continue", 750, 750);
    textAlign(CENTER, CENTER);
  } else if (state=="introGame") {
    background(ocean);
    textSize(90);
    fill(255);
    text("To find the squid, you have to answer these 4 riddles.", 750, 250);
    fill(255,20,147);
    text("You must get them all correct 4 times in a row.", 750, 375);
    fill(0,255,0);
    text("If you don't, you lose.", 750, 500);
    fill(255);
    text("Click the shape you think is the correct answer.", 750, 625);
    text("Press Enter to begin.", 750, 750);
  } else if (state=="gameplay1") {
    background(ocean);
    fill(255);
    text("A plane crashed between the borders", 750, 250);
    text("of the U.S and Canada.", 750, 350);
    fill(255,20,147);
    text("Where do you bury the survivors?", 750, 450);
    fill (255);
    rect(174.5, y1, w, h);
    fill(255,20,147);
    rect(424.5,y1,w,h);
    fill(0,255,0);
    rect(756.5, y1, w,h);
    //4 spaces in the paranthesis to fit the rect
    fill(0,255,0);
    text("(    ) U.S", 250, 600);
    if (mousePressed) {
      if (mouseX>174.5 && mouseX<174.5+w && mouseY>y1 && mouseY<y1+h) {
        state="fail";
      }
    }
    fill(255);
    text("(    ) Canada", 550, 600);
    if (mousePressed) {
      if (mouseX>424.5 && mouseX< 424.5+w && mouseY>y1 && mouseY<y1+h) {
        state="fail";
      }
    }
    fill(255,20,147);
    text("(    ) You don't bury them.", 1050, 600);
      if (mousePressed) {
        if (mouseX>756.5 && mouseX<756.5+w && mouseY>y1 && mouseY<y1+h) {
          state="gameplay2";
        }
      }
  } else if (state=="gameplay2") {
    background(ocean);
    fill(0,255,0);
    textAlign(CENTER);
    text("I have a neck and I wear a cap but I have no head.", 755, 375);
    fill(255);
    text("What am I?", 755, 475);
    fill (0,255,0);
    rect(134.5, y2, w, h);
    fill(255);
    rect(595,y2,w,h);
    fill(255,20,147);
    rect(994.5, y2, w,h);
    //4 spaces in the paranthesis to fit the rect
    fill(255,20,147);
    text("(    ) Bottle", 250, 650);
    if (mousePressed) {
      if (mouseX>134.5 && mouseX<134.5+w && mouseY>y2 && mouseY<y2+h) {
        state="gameplay3";
      }
    }
    fill(0,255,0);
    text("(    ) Ghost", 700, 650);
    if (mousePressed) {
      if (mouseX>595 && mouseX< 595+w && mouseY>y2 && mouseY<y2+h) {
        state="fail";
      }
    }
    fill(255);
    text("(    ) Snake", 1100, 650);
      if (mousePressed) {
        if (mouseX>994.5 && mouseX<994.5+w && mouseY>y2 && mouseY<y2+h) {
          state="fail";
        }
      }
  } else if (state=="gameplay3") {
    background(ocean);
    fill(255,20,147);
    text("What can fill up a room but take up no space?", 755, 375);
    fill (255,20,147);
    rect(140, y3, w, h);
    fill(0,255,0);
    rect(567.5,y3,w,h);
    fill(255);
    rect(1000, y3, w,h);
    fill(255);
    text("(    ) Water", 250, 700);
    if (mousePressed) {
      if (mouseX>140 && mouseX<140+w && mouseY>y3 && mouseY<y3+h) {
        state="fail";
      }
    }
    fill(255,20,147);
    text("(    ) Clothes", 700, 700);
    if (mousePressed) {
      if (mouseX>567.5 && mouseX< 567.5+w && mouseY>y3 && mouseY<y3+h) {
        state="fail";
      }
    }
    fill(0,255,0);
    text("(    ) Light", 1100, 700);
      if (mousePressed) {
        if (mouseX>1000 && mouseX<1000+w && mouseY>y3 && mouseY<y3+h) {
          state="gameplay4";
        }
      }
  } else if (state=="gameplay4") {
    background(ocean);
    fill(0,255,0);
    text("A submarine can fit 60 people.", 750, 275);
    fill(255);
    text("59 people were in it but it sank.", 750, 400);
    fill(244,20,147);
    text("Why?", 750, 525);
    fill (255);
    rect(52.5, y4+15, w-5, h-15);
    fill(255,20,147);
    rect(553,y4+15,w-5,h-15);
    fill(0,255,0);
    rect(1045.5, y4+15, w-5,h-15);
    fill(0,255,0);
    text("(    ) They weigh a lot", 250, 677.5);
    if (mousePressed) {
      if (mouseX>52.5 && mouseX<52.5+w-5 && mouseY>y4+15 && mouseY<y4+h) {
        state="fail";
      }
    }
    fill(255);
    textSize(75);
    text("(    ) It's a submarine", 750, 677.5);
    if (mousePressed) {
      if (mouseX>553 && mouseX< 553+w-5 && mouseY>y4+15 && mouseY<y4+h) {
        state="end";
      }
    }
    fill(255,20,147);
    text("(    ) It's made of lead", 1250,677.5);
      if (mousePressed) {
        if (mouseX>1045.5 && mouseX<1045.5+w-5 && mouseY>y4+15 && mouseY<y4+h) {
          state="fail";
        }
      }
  } else if (state=="end") {
    background(0);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("Congrats!", 750, 100);
    fill(255,20,147);
    text("You found the squid!", 750, 200);
    fill(0,255,0);
    text("Good luck on your adventure!", 750, 300);
    fill(255);
    text("Go win that money!!!", 750, 400);
    squid();
    textSize(75);
    fill(255,20,147);
    text("Thanks for playing.", 750,885);
    fill(0,255,0);
    text("Press Enter to play again.", 750, 960);
  } else if (state=="fail") {
    background(land);
    textAlign(CENTER);
    fill(255);
    text("Congrats!", 755, 375);
    fill(255,20,147);
    text("You failed.", 755, 475);
    fill(0,255,0);
    text("Press Enter to play again.", 755, 575);
  }
}

void keyPressed() { 
  if (key==ENTER || key==RETURN) {
    if (state=="pregame") {
      state="intro";
    } else if (state=="intro") {
      state="introGame";
    } else if (state=="introGame") {
      state="gameplay1";
    } else if (state=="gameplay1") {
      state="gameplay2";
    } else if (state=="gameplay2") {
      state="gameplay3";
    } else if (state=="gameplay3") {
      state="gameplay4";
    } else if (state=="gameplay4") {
      state="end";
    } else if (state=="end") {
      state="pregame";
    } else if (state=="fail") {
      state="pregame";
    }
  }
}

void squid() {
  fill(255);
  ellipse(width/2, 500, 100,100);
  fill(0);
  ellipse(width/2, 500, 80, 80);
  fill(255, 20, 147);
  triangle(width/2,500,650,625,850,625);
  fill(0);
  triangle(width/2,520,680,610,820,610);
  fill(0,255,0);
  rect(650, 635, 200, 145);
  fill(0);
  rect(655, 640, 190, 135);
  fill(255);
  ellipse(750,775,100,100);
  fill(0);
  ellipse(750,775,75,75);
 }
