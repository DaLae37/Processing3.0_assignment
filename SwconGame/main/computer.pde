class computer
{
  int x;
  int y;
  int currentWords;
  float scale;
  String innerText;
  
computer(){
  x = 0;
  y = 0;
  scale = 1;
  innerText = "";
  currentWords = 0;
}
computer(int x, int y){
  this.x = x;
  this.y = y;
  scale = 1;
  innerText = "";
  currentWords = 0;
}
computer(int x, int y, float scale){
  this.x = x;
  this.y = y;
  this.scale = scale;
  innerText = "";
  currentWords = 0;
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

int getCurrentWords(){
  return currentWords;
}

void update(){
 int randResult = (int)random(3700);
 println(randResult);
  if(randResult == 37){
    currentWords = 0;
    innerText = "";
  }
if(currentWords < 500 && keyPressed){
  if(key!= CODED){
    innerText += key;
    currentWords+=1;
    if(currentWords != 0 && currentWords % 50 == 0){
     innerText += "\n"; 
    }
  }
}
}

void display(){
rect(x,y,1000, 600);
fill(255,255,255);
rect(x + 50, y + 50, 900, 500);
fill(0,0,0);
text(innerText, x + 100, y + 100);
fill(80,80,80);
rect(x- 50,y + 650 ,1200, 300);
fill(0,0,0);
textSize(72);
text("Keyboard", x + 500, y + 850);
}
}
