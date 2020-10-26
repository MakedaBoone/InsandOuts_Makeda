/* Makeda Boone
  10/03/2020
  MTEC 2280
  Assignment 4 */
  
//Click anywhere on the canvas
 
PImage image;  

  
void setup(){
  size(700,700);
  background(0);
  imageMode(CENTER);
}


void draw(){
  if(mousePressed==true){
  image=loadImage("heart.jpg");
  image(image,350,325);
  textSize(30);
  fill(255, 200, 200);
  text("LOVE",313,390);
  }
}
