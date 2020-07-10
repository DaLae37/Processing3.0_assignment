kirby k1,k2;

void setup(){
  size(1920, 1080);
  k1 =  new kirby(width/2 - 500, height/2 - 500);
  k2 = new kirby(width/2 + 100, height / 2 + 100, 0.5);
}

void draw(){
  background(255, 255, 255);
  k1.display();
  k1.update();
  
  k2.display();
  k2.update();
  
  if(k1.isCollisionPos(k2.getPos())){
    k1.suctionScale(k2);
  }
}
