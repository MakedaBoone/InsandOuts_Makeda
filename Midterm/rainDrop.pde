class rainDrop {
  float A = random (width);
  float B = random(-200,-100);
  float Bspeed = random(4,10);
  
  void fall() {
    B = B + Bspeed;
    if (B > height){
      B = random(-200,-100);
    }
  }
  
  void display(){
    
    stroke(255);
    line(A,B,A,B+10);
  }
  
}
