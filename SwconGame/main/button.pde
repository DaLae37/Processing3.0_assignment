class button extends ui {
  int sizeX, sizeY;
  boolean isClicked;
  button(int sizeX, int sizeY){
    super("", 0, 0);
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    isClicked = false;
  }
  button(String innerStr, int x, int y, int sizeX, int sizeY){
   super(innerStr, x, y); 
   this.sizeX = sizeX;
   this.sizeY = sizeY;
   isClicked = false;
  }
  void update(){
    if(isClicked){
     isClicked = false; 
    }
    if(mousePressed){
      int mX = mouseX;
      int mY = mouseY;
      if(mX <= x + sizeX && x <= mX && mY <= y + sizeY && y <= mY){
        isClicked = true;
      }
    }
  }
  void display(){
    rect(x, y, sizeX, sizeY);
    fill(255,255,255);
    textSize(sizeY/ 2);
    text(innerStr, x, y + sizeY/2);
    fill(0,0,0);
  }
  boolean getIsClicked(){
    return isClicked;
  }
}
