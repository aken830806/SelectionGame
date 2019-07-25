class Stage{
  private int num;
  int index = 0;
  ArrayList<Question> questionList;
  
  Stage(ArrayList<Question> questionList){
    this.num = questionList.size();
    this.questionList = questionList;
  }
  void display(){
    strokeWeight(5);
    line(55,455,655,455);
    strokeWeight(1);
    int count = 0;
    float x = 55;
    while(count < num){
      if(count == index){//當前進度
        fill(0);
      }else{
        fill(255);
      }
      ellipse(x,455,35,35);
      x += 600/(num-1);
      count += 1;
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
      questionList.get(index).display();//當前關卡
    }
  }
}
