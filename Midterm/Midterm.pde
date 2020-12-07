/*
 Makeda Boone
 MTEC2280
 Midterm
 */

/*Hover over the lake or grass for the airplane to appear. Press
the mouse to make it rain.
*/



PImage img;

int A = 0;
int B = 480;
int C = 700;
int D = 225;

int x = -50;
int y = 250;

rainDrop [] drops = new rainDrop[100];

void setup() {
  size(700, 700);
  img = loadImage("plane.jpg");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new rainDrop();
  }
}

void draw() {
  background(51, 51, 255);

  fill(245, 187, 87);
  stroke(245, 187, 87);
  push();
  translate(100, 80);
  rotate(radians(frameCount / 2));
  ellipse(0, 0, 60, 60);
  line(0, -60, 0, -40);
  line(0, 40, 0, 60);
  line(-45, -45, -30, -30);
  line(45, -45, 30, -30);
  line(-60, 0, -40, 0);
  line(40, 0, 60, 0);
  line(-45, 45, -30, 30);
  line(45, 45, 30, 30);
  pop();
  noFill();

  if ( mouseX>A && mouseX<A+C && mouseY>B && mouseY<B+D ) {
    img.resize(125, 125);
    image(img, x, y);
    x++;
  }



  noStroke();
  fill(0, 102, 51);
  rect(A, B, C, D);

  fill(65, 105, 225);
  quad(560, 700, 380, 480, 310, 480, 230, 700);

  stroke(0);
  fill(210, 105, 30);

  rect(20, 400, 20, 150);
  rect(120, 430, 20, 150);
  rect(650, 400, 20, 150);
  rect(570, 430, 20, 150);

  noStroke();  
  fill(0, 100, 0);
  triangle(-30, 420, 120, 420, 46, 290);

  fill(128, 128, 0);
  triangle(-30, 360, 115, 360, 46, 250);

  fill(107, 142, 35);
  triangle(30, 480, 240, 480, 135, 350);

  fill(0, 128, 0);
  triangle(30, 420, 240, 420, 135, 320);

  fill(0, 128, 0);
  triangle(500, 450, 650, 450, 575, 320);

  fill(173, 255, 47);
  triangle(590, 410, 720, 410, 648, 250);

  fill(128, 128, 0);
  triangle(580, 350, 730, 350, 656, 200);


  fill(0, 128, 0);
  triangle(500, 400, 650, 400, 575, 300);

  if (mousePressed == true) {
    background(127);

    fill(192, 192, 192);
    ellipse(45, 150, 126, 97);
    ellipse(104, 150, 70, 60);
    ellipse(-104, 150, 70, 60);

    fill(192, 192, 192);
    ellipse(245, 100, 120, 97);
    ellipse(200, 100, 70, 60);
    ellipse(300, 100, 70, 60);

    fill(192, 192, 192);
    ellipse(350, 290, 120, 97);
    ellipse(300, 290, 70, 60);
    ellipse(400, 290, 70, 60);

    fill(192, 192, 192);
    ellipse(510, 100, 120, 97);
    ellipse(575, 100, 70, 60);
    ellipse(450, 100, 70, 60);

    fill(192, 192, 192);
    ellipse(510, 100, 120, 97);
    ellipse(575, 100, 70, 60);
    ellipse(450, 100, 70, 60);

    fill(192, 192, 192);
    ellipse(610, 325, 120, 97);
    ellipse(675, 325, 70, 60);
    ellipse(550, 325, 70, 60);

    noStroke();
    fill(0, 102, 51);
    rect(0, 480, 700, 225);

    fill(65, 105, 225);
    quad(560, 700, 380, 480, 310, 480, 230, 700);

    stroke(0);
    fill(210, 105, 30);

    rect(20, 400, 20, 150);
    rect(120, 430, 20, 150);
    rect(650, 400, 20, 150);
    rect(570, 430, 20, 150);

    noStroke();  
    fill(0, 100, 0);
    triangle(-30, 420, 120, 420, 46, 290);

    fill(128, 128, 0);
    triangle(-30, 360, 115, 360, 46, 250);

    fill(107, 142, 35);
    triangle(30, 480, 240, 480, 135, 350);

    fill(0, 128, 0);
    triangle(30, 420, 240, 420, 135, 320);

    fill(0, 128, 0);
    triangle(500, 450, 650, 450, 575, 320);

    fill(173, 255, 47);
    triangle(590, 410, 720, 410, 648, 250);

    fill(128, 128, 0);
    triangle(580, 350, 730, 350, 656, 200);


    fill(0, 128, 0);
    triangle(500, 400, 650, 400, 575, 300);

    for (int i = 0; i < drops.length; i++) {
      drops[i].fall();
      drops[i].display();
    }
  }
}
