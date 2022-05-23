//James Lee
//Final Project Game

import processing.serial.*;

Serial myPort;
int val=0;

PImage gameBackground;

String state="intro";

void setup(){
  size(1500,850);
  gameBackground=loadImage("gameImage.jpg");
  gameBackground.resize(1500,850);
  background(gameBackground);
}

void draw(){
  fill(137, 238, 178);
  
  if (state=="intro") {
    textSize(50);
    textAlign(CENTER);
    text ("Welcome Travelers!", width/2, 100);
    text ("In this game, you will have to avoid obstacles and try your", width/2, 165); 
    text ("best to reach the end. Once you reach the end of the stage, ",  width/2, 230);
    text ("you will have to answer a question. If you answer the", width/2, 295);
    text ("question correctly, then you can move onto the next stage.", width/2, 360);
    text ("If you get it wrong, you lose. In order to win, you have to", width/2, 425);
    text ("answer 4 questions correctly(one per stage). There will also", width/2, 490);
    text ("be a set timer per stage. You will also need to complete", width/2, 555);
    text ("the stage within that time limit or you lose.", width/2, 620);
    text ("Are you ready for the challenge?", width/2, 685);
    text ("If so, press ENTER/RETURN to start.", width/2, 765);
  } else if (state=="lvl1") {
    background(gameBackground);
    rect (200, 750, 1400, 250);
    rect (0, 575, 1200, 75);
    
    rect (50, 400, 200,100);
    rect (350, 400, 200, 100);
    rect (650, 400, 200, 100);
    rect (950, 400, 200, 100);
    rect (1250, 400, 200, 100);
    
    rect (0, 250, 200, 100);
    rect (275, 250, 200, 100);
    rect (575, 250, 200, 100);
    rect (875, 250, 200, 100);
    rect (1175, 250, 200, 100);
    
    rect (50,100, 200,100);
    rect (350, 100, 200, 100);
    rect (650, 100, 200, 100);
    rect (950, 100, 200, 100);
    rect (1250, 100, 200, 100);
    
    rect (0, 0, 1500, 50);
    fill(0);
    textSize(50);
    text ("FINISH", 725, 40);
  } else if (state=="lvl2") {
    background(gameBackground);
    rect (0, 750, 1300, 250);
  } else if (state=="lvl4") {
    background(gameBackground);
    rect (200, 750, 1400, 250);
    rect (0, 575, 1200, 75);
  }
    //size (1500,850);
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
