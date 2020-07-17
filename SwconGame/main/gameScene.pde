class gameScene extends scene{
 button finishButton;
 computer cmp;
 boolean isFinished;
 
 gameScene(){
   finishButton = new button("Finish", 1500, 800, 100, 50);
   cmp = new computer(100, 100, 1);
   isFinished = false;
 }
 void update(){
   if(isFinished){
     
   }
   else{
    finishButton.update();
    if(finishButton.getIsClicked() && cmp.getCurrentWords() == 500){
      isFinished = true;
    }
    cmp.update();
   }
 }
 void render(){
   if(isFinished){
     textSize(72);
     text("Clear!", width / 2, height / 2);
   }
   else{
     text(cmp.getCurrentWords() +" / 500", 1200, 300);
     finishButton.display();
     cmp.display();
   }
 }
}
