class Stage{
  private int num;
  int index = 0;
  ArrayList<Question> questionList;
  
  float x = 55,currentX = 55;
  float speed = 3;
  
  Stage(ArrayList<Question> questionList){
    this.num = questionList.size();
    this.questionList = questionList;
  }
  void display(){
    strokeWeight(5);
    line(55,455,655,455);
    strokeWeight(1);
    int count = 0;
    float stageX = 55;
    while(count < num){
      fill(255);
      ellipse(stageX,455,35,35);
      stageX += 600/(num-1);
      count += 1;
    }
    fill(0);
    ellipse(currentX,455,35,35);
    if(abs(currentX-x) > speed){
      if(currentX < x){
        currentX += speed;
      }else{
        currentX -= speed;
      }
    }
    if(index >= questionList.size()){
      fill(0);
      textFont(chFont,60);
      text("Win.",width/2-textWidth("Win.")/2,650);
    }else if(status.HP <= 0){//遊戲結束條件
      fill(0);
      textFont(chFont,60);
      text("Game Over.",width/2-textWidth("Game Over.")/2,650);
    }else{
      x = 55 + 600/(num-1)*index;
      questionList.get(index).display();//當前關卡
    }
  }
}
