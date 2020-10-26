/* Makeda Boone
 09/16/2020
 MTEC2210
 Assignment 2  */


int[] A = new int [25];
int[] B = new int[25];
int i = 0;
float move = .50;


void setup() {
  size(700, 700);
  background(120);
  for (int i=0; i<B.length; i++) {
    A[i]= int(random(0, width));
    B[i]=int(random(0, height));
  }
}

void draw() {
  stroke(0);
  strokeWeight(5);
  fill(255);
  for (int i=0; i<B.length; i++) {
    rect(B[i]+move, A[i]+move, 120, 120);
  }// randomizes rect position
}


void mousePressed() {
  if (i==0) {
    move -=1;
  }//moves rect when mouse is pressed 
}
