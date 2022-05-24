//James Lee
//Final Project Game

import processing.serial.*;

Serial myPort;
int val=0;

PImage gameBackground;

String state="intro";

float upward=850;

void setup(){
  size(255,850);
  gameBackground=loadImage("gameImage.jpg");
  gameBackground.resize(255,850);
  background(gameBackground);
  
  printArray(Serial.list());
  String portName=Serial.list()[1];
  myPort=new Serial(this, portName, 9600);
}

void draw(){
  fill(137, 238, 178);
  
  if (myPort.available()>0) {
    val=myPort.read();
  }
  
  if (state=="intro") {
    background(gameBackground);
    textSize(15);
    textAlign(CENTER);
    text("Welcome!", width/2, 100);
    text("In this game, you need to dodge", width/2, 160);
    text("obstacles and reach the end of", width/2, 220);
    text("the stage. Once you get to the", width/2, 280);
    text("end of the stage, you will move", width/2, 340);
    text("onto the next. There are 4 stages", width/2, 400);
    text("total. You will need to pass all 4", width/2, 460);
    text("stages in order to win the game.", width/2, 520);
    text("If you don't, you lose.", width/2, 580);
    text("Are you ready?", width/2, 640);
    text("Press ENTER or RETURN to start.", width/2, 700);
  } else if (state=="lvl1") {
    background(gameBackground);
    obstacles();
    finish();
    player();
    upward-=0.25;
    
    
    if (val<=127.5) {
      player();
    } else if (val>127.5) {
      player();
    }
    
    if (mousePressed) {
    if (mouseX>0 && mouseX<1500 && mouseY>0 && mouseY<50) {
      state="break1";
    }
    }
    
  } else if (state=="lvl2") {
    background(gameBackground);
    obstacles();
    finish();
    player();
    upward-=0.5;
    
    if (val<=127.5) {
      player();
    } else if (val>127.5) {
      player();
    }
    
    if (mousePressed) {
    if (mouseX>0 && mouseX<1500 && mouseY>0 && mouseY<50) {
      state="break2";
    }
    }
    
  } else if (state=="lvl3") {
    background(gameBackground);
    obstacles();
    finish();
    player();
    upward-=0.75;
    
    if (val<=127.5) {
      player();
    } else if (val>127.5) {
      player();
    }
    
    if (mousePressed) {
    if (mouseX>0 && mouseX<1500 && mouseY>0 && mouseY<50) {
      state="break3";
    }
    }
    
  } else if (state=="lvl4") {
    background(gameBackground);
    obstacles();
    finish();
    player();
    upward-=1;
    
    if (val<=127.5) {
      player();
    } else if (val>127.5) {
      player();
    }
    
    if (mousePressed) {
    if (mouseX>0 && mouseX<1500 && mouseY>0 && mouseY<50) {
      state="end";
    }
    }
    
  
  } else if (state=="break1") {
    background(gameBackground);
    textSize(50);
    text ("Press \n ENTER \n or \n RETURN \n when \n ready.", width/2, 250);
  } else if (state=="break2") {
    background(gameBackground);
    text ("Press \n ENTER \n or \n RETURN \n when \n ready.", width/2, 250);
  } else if (state=="break3") {
    background(gameBackground);
    text ("Press \n ENTER \n or \n RETURN \n when \n ready.", width/2, 250);
  } else if (state=="end") {
    background(gameBackground);
    text (" Congrats. \n You \n won! \n Press \n ENTER \n or \n RETURN \n to \n play \n again.", width/2, 100);
  }
}

void keyPressed() {
  if (key==ENTER || key==RETURN) {
    if (state=="intro") {
      state="lvl1";
    } else if (state=="lvl1") {
      state="break1";
    } else if (state=="break1") {
      state="lvl2";
    } else if (state=="lvl2") {
      state="break2";
    } else if (state=="break2") {
      state="lvl3";
    } else if (state=="lvl3") {
      state="break3";
    } else if (state=="break3") {
      state="lvl4";
    } else if (state=="lvl4") {
      state="end";
    } else if (state=="end") {
      state="intro";
    } else if (state=="fail") {
      state="intro";
    }
  }
}

void obstacles() {
  //actual obstacles
  fill (185,103,255);
  rect (50, 800, 1400, 100);
  rect (0, 700, 225, 40);
  rect (50, 600, 225, 40);
  rect (0, 500, 225, 40);
  rect (0, 400, 225, 40);
  rect (50, 300, 225, 40);
  rect (50, 200, 225, 40);
  rect (0, 100, 225, 40);
}

void finish() {
  fill(5,255,161);
  rect (0, 0, 1500, 50);
  fill(0);
  fill(0);
  textSize(50);
  fill (255,113,206);
  text ("FINISH", 130, 40);
  finish2();
}

void player() {
  ellipse (val, upward, 25, 25);
}

void finish2() {
  
}
