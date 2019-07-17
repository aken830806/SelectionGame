class Question{
  String content;
  Boolean isStartAnswer = false;//是否開始作答
  ArrayList<Answer> answerList;
  int correct;//正確答案代號
  final int ANSWER_W = 490;
  final int ANSWER_H = 50;
  
  Question(String content,String[] answers,int correct){
    this.content = content;
    this.answerList = new ArrayList<Answer>();
    int count = 0;
    for(String answer:answers){//array to arrayList
      switch(count){
        case 0:
          answerList.add(new Answer(40,560,answer));
          break;
        case 1:
          answerList.add(new Answer(550,560,answer));
          break;
        case 2:
          answerList.add(new Answer(40,630,answer));
          break;
        case 3:
          answerList.add(new Answer(550,630,answer));
          break;
        default:
          println("Too many answers.");
      }
      count += 1;
    }
    this.correct = correct;
  }
  void display(){
    if(!isStartAnswer){//顯示題目
      fill(0);
      textFont(chFont,30);
      text(content,50,600);
    }else{//顯示答案
      textFont(chFont,30);
      for(Answer ans:answerList){
        if(!ans.wrong){
          fill(255);
          rect(ans.x,ans.y,ANSWER_W,ANSWER_H);
          fill(0);
          text(ans.content,ans.x+ANSWER_W/2-textWidth(ans.content)/2,ans.y+35);
        }
      }
    }
  }
  void mousePressed(){
    if(mouseX > 0 && mouseX < width && mouseY > 520 && mouseY < 720){
      if(isStartAnswer){
        int answer = getTouchAnswerArea();
        if(answer != -1){
          if(answer == correct-1){
            stage.index += 1;
          }else{
            answerList.get(answer).wrong = true;
            status.HP -= 1;
          }
        }
      }else{
        isStartAnswer = true;
      }
    }
  }
  int getTouchAnswerArea(){
    if(mouseX > 40 && mouseX < 40+ANSWER_W && mouseY > 560 && mouseY < 560+ANSWER_H){
      return 0;
    }else if(mouseX > 550 && mouseX < 550+ANSWER_W && mouseY > 560 && mouseY < 560+ANSWER_H){
      return 1;
    }else if(mouseX > 40 && mouseX < 40+ANSWER_W && mouseY > 630 && mouseY < 630+ANSWER_H){
      return 2;
    }else if(mouseX > 550 && mouseX < 550+ANSWER_W && mouseY > 630 && mouseY < 630+ANSWER_H){
      return 3;
    }
    return -1;
  }
}
