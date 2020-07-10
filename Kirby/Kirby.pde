void drawHands(){
  stroke(223,143,154);
  fill(223,143,154);
  for(int i=0; i<2; i++){
    int handsPosWeight = 250 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + handsPosWeight, height / 2, 200, 175);
  }
}

void drawFeet(){
  stroke(164,4,4);
  fill(164,4,4);
  for(int i=0; i<2; i++){
    int feetPosWeight = 150 * ((i == 1) ? -1 : 1);
    circle(width / 2 + feetPosWeight, height / 2 + 200, 200);
  }
}

void drawBody(){
  stroke(255,255,255);
  fill(223,143,154);
  circle(width / 2, height / 2, 500);
}

void drawEyes(){
  //Eye
  stroke(83,38,35);
  fill(83,38,35);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + eyePosWeight, height / 2 - 65, 75, 150);
  }
  
  //Pupil
  stroke(255,255,255);
  fill(255,255,255);
  for(int i=0; i<2; i++){
    int pupilPosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + pupilPosWeight, height / 2 - 100, 35, 65);
  }
  
  //Under Eye
  stroke(2,67,133);
  fill(2,67,133);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + eyePosWeight, height / 2 - 30, 35, 65);
  }
  
  stroke(83,38,35);
  fill(83,38,35);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + eyePosWeight, height / 2 - 45, 65, 35);
  }
}

void drawMouth(){
  stroke(132,27,23);
  fill(132,27,23);
  ellipse(width / 2, height / 2 + 50, 65, 45);
  
  stroke(224,85,88);
  fill(224,85,88);
  ellipse(width / 2, height / 2 + 50, 50, 45);
}

void drawFlushing(){
  stroke(202,81,90);
  fill(202,81,90);
  for(int i=0; i<2; i++){
    int flushingPosWeight = 150 * ((i == 1) ? -1 : 1);
    ellipse(width / 2 + flushingPosWeight, height / 2 + 10, 65, 45);
  }
}

void setup(){
  size(800, 800);
  background(255, 255, 255);
  draw();
}

void draw(){
 drawHands();
 drawFeet();
 drawBody();
 drawEyes();
 drawMouth();
 drawFlushing();
}
