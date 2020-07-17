class mainScene extends scene{
 button startButton;
 boolean nextScene;
 
 mainScene(){
  startButton = new button("Start", 800, 300, 200, 50);  
  nextScene =false;
 }
 void update(){
  startButton.update();
  if(startButton.getIsClicked()){
    nextScene = true;
  }
 }
 void render(){
   startButton.display();
 }
 boolean getNextScene(){
  return nextScene; 
 }
}
