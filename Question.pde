class Question{
  String content;
  Boolean isStartAnswer = false;//是否開始作答
  ArrayList<Answer> answerList;
  int correct;//正確答案代號
  Role monster;
  
  Question(String content,String[] answers,int correct){
    this.content = content;
    this.answerList = new ArrayList<Answer>();
    int count = 0;
    for(String answer:answers){//array to arrayList
      int fontSize = 30;
      textFont(chFont,fontSize);
      while(textWidth(answer) > ANSWER_W){//計算適合大小
        fontSize -= 1;
        textFont(chFont,fontSize);
      }
      switch(count){
        case 0:
          answerList.add(new Answer(40,560,answer,fontSize));
          break;
        case 1:
          answerList.add(new Answer(550,560,answer,fontSize));
          break;
        case 2:
          answerList.add(new Answer(40,630,answer,fontSize));
          break;
        case 3:
          answerList.add(new Answer(550,630,answer,fontSize));
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
    
    fill(255);//顯示題目
    rect(85,40,550,150);
    fill(0);
    textFont(chFont,20);
    text(content,100,70);
    
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
