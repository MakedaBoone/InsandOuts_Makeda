/*Makeda Boone
 12/17/2020
 "Watch Out"
 MTEC 2280
 Final Project*/

import processing.serial.*;
Serial mainPort;
int data = 0;
int buttonValA = 0;
int buttonValB = 0;


PImage player ;
int x = 250;
int y = 500;

fallingObject [] object = new fallingObject[25];

int totalObjects = 0;


void setup() {
  size(700, 700);
  player = loadImage("player.jpg");
  for (int i = 0; i < object.length; i++) {
    object[i] = new fallingObject();
  }

  printArray(Serial.list());
  String port = Serial.list()[2];
  mainPort = new Serial(this, port, 9600);
}


void draw() {
  background(255, 51, 132);

  if ( mainPort.available() > 1) { 
    data = mainPort.read();
  }  


//Button Values
  if (data == 0 || data == 1) { 
    buttonValB = data;
  } else {
    buttonValA = data;
  }
 
  //Player movement user button
  player.resize(75, 100);
  image(player, x, y);

  if (buttonValA == 2) {
    x--;
  } else if (buttonValB == 1) {
    x++;
  }
  

  object[totalObjects] = new fallingObject();

  //totalObjects++;

  if (totalObjects >= object.length) {
    totalObjects = 0;
  }


  for (int i = 0; i < object.length; i++) {
    object[i].move();
    object[i].display();
  }
  println("data:" + data);
  println("A:" + buttonValA);
  println("B:" + buttonValB);
}
