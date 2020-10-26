/* Makeda Boone
 9/24/2020
 MTEC2280
 Assignment 3 */

/*Window position*/
int A=265;
int B=275;
int C=50;
int D=70;
/*Door position*/
int E=375;
int F=350;
int G=60;
int H=100;
//chimney
int I= 400;
int J= 100;
int K= 33;
int L= 150;
//smoke
int yA=200;
int yB=215;
int yC=230;
int yD=245;



void setup() {
  size(700, 700);
}

void draw() {

  background(10, 55, 180);

  fill(100, 50, 0);
  rect(250, 250, 200, 200);

  if ( mouseX>A && mouseX<A+C && mouseY>B && mouseY<B+D ) {
    fill(255, 204, 0);

    textSize(20);
    fill(255, 204, 0);
    text("Who's there?", 115, 325);
  } else {
    fill(0);
  }

  rect(A, B, C, D);//window

  if ( mouseX>E && mouseX<E+G && mouseY>F && mouseY<F+H ) {
    textSize(20);
    fill(255, 140, 0);
    text("knock! knock!", 400, 333);
  }

  fill(5, 100, 20);
  rect(E, F, G, H);//door


  fill(255, 204, 0);
  ellipse(425, 405, 10, 10);

  stroke(0);
  strokeWeight(2);
  line(265, 300, 315, 300);
  line(290, 275, 290, 345);




  if ( mouseX>I && mouseX<I+K && mouseY>J && mouseY<J+L ) {
    fill(255);
    ellipse(420, yA, 15, 15);
    ellipse(420, yB, 15, 15);
    ellipse(420, yC, 15, 15);
    ellipse(420, yD, 15, 15);
    

    yA--;
    yB--;
    yC--;
    yD--;
  }//smoke

  fill(160, 82, 45);
  rect(I, J, K, L); 


  fill(255, 25, 10);
  triangle(350, 100, 450, 250, 250, 250);
  
  textSize(25);
  fill(127);
  text("Hover over the door, window, then chimney.", 100, 500);
}
