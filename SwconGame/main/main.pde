mainScene m;
gameScene g;

void setup(){
  size(1920, 1080);
  m = new mainScene();
  g = new gameScene();
}

void draw(){
  background(255, 255, 255);
  if(!m.getNextScene()){
    m.update();
    m.render(); 
  }
  else{
    g.update();
    g.render();
  }
}
