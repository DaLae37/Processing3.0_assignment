class kirby
{
  int x;
  int y;
  int diffX;
  int diffY;
  float scale;
kirby(){
  diffX = 10;
  diffY = 10;
  x = 0;
  y = 0;
  scale = 1;
}
kirby(int x, int y){
  diffX = 10;
  diffY = 10;
  this.x = x;
  this.y = y;
  scale = 1;
}
kirby(int x, int y, float scale){
  diffX = 10;
  diffY = 10;
  this.x = x;
  this.y = y;
  this.scale = scale;
}

void setScale(float scale){
  this.scale = scale;
}

float getScale(){
  return scale;
}

int []getPos(){
  int [] pos = new int[2];
  pos[0] = x;
  pos[1] = y;
 return pos;
}

boolean isCollisionPos(int []pos){
  float len = (x - pos[0]) * (x - pos[0]) + (y - pos[1]) * (y - pos[1]);
  len = sqrt(len);
  
  if(500 * scale < len){
    return false;
  }
  else{
   return true; 
  }
  
}

void suctionScale(kirby k){
  float s = k.getScale();
  s += scale;
  s /= 2;
  setScale(s);
  k.setScale(s);
}

void update(){
  x += diffX;
  y += diffY;
  if(x > 1920 || x < 0){
    diffX *= -1;
  }
  if(y > 1080 || y < 0){
    diffY *= -1;
  }
}

void display(){
 drawHands();
 drawFeet();
 drawBody();
 drawEyes();
 drawMouth();
 drawFlushing(); 
}

void drawHands(){
  stroke(255,255,255);
  fill(223,143,154);
  for(int i=0; i<2; i++){
    int handsPosWeight = 250 * ((i == 1) ? -1 : 1);
    ellipse(x + (handsPosWeight * scale), y, 200 * scale, 175 * scale);
  }
}

void drawFeet(){
  stroke(255,255,255);
  fill(164,4,4);
  for(int i=0; i<2; i++){
    int feetPosWeight = 150 * ((i == 1) ? -1 : 1);
    circle(x + (feetPosWeight * scale), y + (200 * scale), 200 * scale);
  }
}

void drawBody(){
  stroke(255,255,255);
  fill(223,143,154);
  circle(x, y, 500 * scale);
}

void drawEyes(){
  //Eye
  stroke(83,38,35);
  fill(83,38,35);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(x + (eyePosWeight * scale), y - (65 * scale), 75 * scale, 150  * scale);
  }
  
  //Pupil
  stroke(255,255,255);
  fill(255,255,255);
  for(int i=0; i<2; i++){
    int pupilPosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(x + (pupilPosWeight * scale), y - (100 * scale), 35  * scale, 65 * scale);
  }
  
  //Under Eye
  stroke(2,67,133);
  fill(2,67,133);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(x + (eyePosWeight * scale), y - (30 * scale), 35 * scale, 65 * scale);
  }
  
  stroke(83,38,35);
  fill(83,38,35);
  for(int i=0; i<2; i++){
    int eyePosWeight = 65 * ((i == 1) ? -1 : 1);
    ellipse(x + (eyePosWeight * scale), y - (45 * scale), 65 * scale, 35 * scale);
  }
}

void drawMouth(){
  stroke(132,27,23);
  fill(132,27,23);
  ellipse(x, y + (50 * scale), 65 * scale, 50 * scale);
  
  stroke(224,85,88);
  fill(224,85,88);
  ellipse(x, y + (50 * scale), 35 * scale, 40 * scale);
}

void drawFlushing(){
  stroke(202,81,90);
  fill(202,81,90);
  for(int i=0; i<2; i++){
    int flushingPosWeight = 150 * ((i == 1) ? -1 : 1);
    ellipse(x + (flushingPosWeight * scale), y + (10 * scale), 65 * scale, 45 * scale);
  }
}

}
