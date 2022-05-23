//James Lee
//Final Project Music

import processing.serial.*;
import processing.sound.*;

SoundFile sad;
SoundFile morning;
SoundFile chill;

Serial myPort;
int val=0;

PImage chillBackground;
PImage sadBackground;
PImage morningBackground;
PImage backstage;

String state="intro";

void setup() {
  size (500,500);
  background(0);
  
  chillBackground=loadImage("chill.jpg");
  chillBackground.resize(500,500);
  
  sadBackground=loadImage("sad.jpg");
  sadBackground.resize(500,500);
  
  morningBackground=loadImage("morning.jpg");
  morningBackground.resize(500,500);
  
  backstage=loadImage("backstage.jpg");
  backstage.resize(500,500);
  
  sad=new SoundFile(this, "missingYou.mp3");
  morning=new SoundFile(this, "morningRoutine.mp3");
  chill=new SoundFile(this, "purpleCat.mp3");
  
  sad.amp(0.01);
  morning.amp(0.01);
  chill.amp(0.01);
}

void draw() {
  if (state=="intro") {
    background(backstage);
    textSize(40);
    textAlign(CENTER);
    fill(252,124,124);
    text ("Welcome to \n James's Music Festival!", width/2, 50);
    text ("Enjoy your time here \n and most importantly, \n relax and enjoy \n the music session.",width/2, 170);
    text ("Press ENTER or \n RETURN to start.", width/2, 410);
  } else if (state=="song1") {
    chill.stop();
    if (val<=63.75) {
      background(sadBackground);
      sad.play();
      sad.rate(0.5);
    } else if (val>63.75 && val<=127.5) {
      background(sadBackground);
      sad.play();
      sad.rate(1);
    } else if (val>127.5 && val <= 191.25) {
      background(sadBackground);
      sad.play();
      sad.rate(2);
    } else if (val>191.25) {
      state="song2";
    }
  } else if (state=="song2") {
    sad.stop();
    if (val<=63.75) {
      background(morningBackground);
      morning.play();
      morning.rate(0.5);
    } else if (val>63.75 && val <=127.5) {
      background(morningBackground);
      morning.play();
      morning.rate(1);
    } else if (val>127.5 && val <= 191.25) {
      background(morningBackground);
      morning.play();
      morning.rate(2);
    } else if (val>191.25) {
      state="song3";
    }
  } else if (state=="song3") {
    morning.stop();
    if (val<=63.75) {
      background(chillBackground);
      chill.play();
      chill.rate(0.5);
    } else if (val>63.75 && val <=127.5) {
      background(chillBackground);
      chill.play();
      chill.rate(1);
    } else if (val>127.5 && val <= 191.25) {
      background(chillBackground);
      chill.play();
      chill.rate(2);
    } else if (val>191.25) {
      state="song1";
    }
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
