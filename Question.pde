class Question{
  String content;
  float alpha = 0;
  Boolean isStartAnswer = false;//是否開始作答
  ArrayList<Answer> answerList;
  int correct;//正確答案代號
  Role monster;
  
  Question(String content,String[] answers,int correct){
    this.content = content;
    this.answerList = new ArrayList<Answer>();
    int count = 0;
    for(String answer:answers){//array to arrayList
      switch(count){
        case 0:
          answerList.add(new Answer(45,535,answer,30));
          break;
        case 1:
          answerList.add(new Answer(45+ANSWER_W+ANSWER_GAP,535,answer,30));
          break;
        case 2:
          answerList.add(new Answer(45,535+ANSWER_H+ANSWER_GAP,answer,30));
          break;
        case 3:
          answerList.add(new Answer(45+ANSWER_W+ANSWER_GAP,535+ANSWER_H+ANSWER_GAP,answer,30));
          break;
        default:
          println("Too many answers.");
      }
      count += 1;
    }
    this.correct = correct;
    monster = new Role(1080,40,700,340);
  }
  void display(){
    monster.display();
    if(!monster.isMoving && !monster.willDead){
      fill(255,alpha);//顯示題目
      rect(85,40,550,150);
      fill(0,alpha);
      textFont(chFont,20);
      text(content,100,70);
      if(alpha <255){
        alpha += 3;
      }
    }
    if(!isStartAnswer && !monster.isMoving){//移動完成並且尚未開始作答
      isStartAnswer = true;
    }
    if(isStartAnswer){//顯示答案
      textFont(chFont,30);
      for(Answer ans:answerList){
        ans.display();
      }
    }
  }
  void mousePressed(){
    if(isStartAnswer){
      int count = 1;
      for(Answer answer:answerList){
        if(answer.mousePressed()){
          if(count == correct){
            monster.dead();
          }else{
            status.HP -= 1;
          }
          break;
        }
        count += 1;
      }
    }
  }
}
