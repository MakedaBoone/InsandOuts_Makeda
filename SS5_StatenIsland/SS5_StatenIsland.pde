/* Makeda Boone
 10/26/2020
 MTEC2280
 Assignment 5 */

PImage planets[];


int A=298;
int B=240;
int C=200;
int D=200;

int randomP;
String[] names = {"EARTH", "VENUS", "PLUTO", "URANUS", "JUPITER", "MARS", "MERCURY"
};


void setup() {
  size(600, 600);
  imageMode (CENTER);
  planets = new PImage[7];

  planets[0] = loadImage("earth.jpg");
  planets[1] = loadImage("venus.png");
  planets[2] = loadImage("pluto.png");
  planets[3] = loadImage("uranus.jpg");
  planets[4] = loadImage("jupiter.png");
  planets[5] = loadImage("mars.jpg");
  planets[6] = loadImage("mercury.jpg");
  
  planets[0].resize(80,80);
  planets[1].resize(80,80);
  planets[2].resize(80,80);
  planets[3].resize(80,80);
  planets[4].resize(80,80);
  planets[5].resize(80,80);
  planets[6].resize(80,80);
}




void randomPlanet () {

  randomP = int(random(0, planets.length)); 
  
} 


void planetNames () {

 
  fill(255);
  textSize(20);
  
}


void draw () {
  background(0);
  image(planets[randomP], A, B);
  text(names[randomP], 250, 375);
}
void mousePressed() {
  randomPlanet();
  planetNames();
}
