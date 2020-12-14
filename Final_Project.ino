int buttonPinA = 3;
int buttonPinB = 11;

int light = 13;


int buttonValA = 0;
int buttonValB = 0;



void setup() {
  Serial.begin(9600);
  pinMode(buttonPinA, INPUT);
  pinMode (buttonPinB, INPUT);
  pinMode (light, OUTPUT);

}

void loop() {
  buttonValA = digitalRead(buttonPinA);
  buttonValB = digitalRead(buttonPinB);
  digitalWrite(light, LOW);


  /*if (buttonValA == 1 ) {
    //digitalWrite(light, HIGH);
    //Serial.println("MOVING LEFT");
    //delay(500);
  }
  //digitalWrite(light,LOW);
  if (buttonValB == 1) {
    //digitalWrite(light, HIGH);
    //Serial.println("MOVING RIGHT");
    //delay(500);
  }*/

  if (buttonValA == 1) {
    buttonValA = 2;
  }
  else{ buttonValA = 3;
}


Serial.write(buttonValA);
Serial.write(buttonValB);
delay(100);
}
