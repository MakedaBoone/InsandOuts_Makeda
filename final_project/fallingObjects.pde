class fallingObject {

  float A, B;   
  float speed; 
  color C;
  float D;     

  fallingObject() {
    D = random(8,20);               
    A = random(width);   
    B = -D*4;             
    speed = random(.05, 1);   
    C = color(22, 160, 133);
    
  }


  void move() {
    
    B += speed;
  }
  
  
   boolean reachedBottom() {
    if (B > height + D*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    
    fill(C);
    noStroke();
    ellipse(A, B, D*2, D*2);
  }

  
  void caught() {
    speed = 0; 
    B = -1000;
    }
   
  }
  
