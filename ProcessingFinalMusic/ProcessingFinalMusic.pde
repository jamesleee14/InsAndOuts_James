//James Lee
//Final Project Music

import processing.serial.*;
import processing.sound.*;

SoundFile song1;
SoundFile song2;
SoundFile song3;

Serial myPort;
int val=0;

PImage chillBackground;
PImage sadBackground;
PImage morningBackground;

String state="intro";

void setup() {
  size (500,500);
  chillBackground=loadImage("chill.jpg");
  chillBackground.resize(500,500);
  
  sadBackground=loadImage("sad.jpg");
  sadBackground.resize(500,500);
  
  morningBackground=loadImage("morning.jpg");
  morningBackground.resize(500,500);
  
  song1=new SoundFile(this, "missingYou.mp3");
  song2=new SoundFile(this, "morningRoutine.mp3");
  song3=new SoundFile(this, "purpleCat.mp3");
  
  song1.loop();
  
  song1.amp(0.5);
  song2.amp(0.5);
  song3.amp(0.5);
  
  
  background(0);
  song1.play();
}

void draw() {
  if (state=="intro") {
    textSize(50);
    textAlign(CENTER);
    text ("Welcome to James's Music Festival!", width/2, 150);
    text ("Enjoy your time here and most importantly, \n relax and enjoy the music session.",width/2, 300);
  }
  
}

void keyPressed() {
  if (key==ENTER || key==RETURN) {
    if (state=="intro") {
      state="song1";
    } else if (state=="song1") {
      state="song2";
    } else if (state=="song2") {
      state="song3";
    } else if (state=="song3") {
      state="intro";
    }
  }
}
