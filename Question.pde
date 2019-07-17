class Question{
  String content;
  Boolean isStartAnswer = false;//是否開始作答
  ArrayList<String> answerList;
  int correct;//正確答案代號
  
  Question(String content,String[] answers,int correct){
    this.content = content;
    this.answerList = new ArrayList<String>();
    for(String answer:answers){//array to arrayList
      answerList.add(answer);
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
      for(int count=0;count<answerList.size();count++){
        fill(255);
        switch(count){
          case 0:
            rect(40,560,490,50);
            fill(0);
            text(answerList.get(0),285-textWidth(answerList.get(0))/2,595);//285 = 40+490/2
            break;
          case 1:
            rect(550,560,490,50);
            fill(0);
            text(answerList.get(1),795-textWidth(answerList.get(1))/2,595);//795 = 550+490/2
            break;
          case 2:
            rect(40,630,490,50);
            fill(0);
            text(answerList.get(2),285-textWidth(answerList.get(2))/2,665);//285 = 40+490/2
            break;
          case 3:
            rect(550,630,490,50);
            fill(0);
            text(answerList.get(3),795-textWidth(answerList.get(3))/2,665);//795 = 550+490/2
            break;
          default:
            println("Too many answers.");
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
            println("correct");
          }else{
            answerList.remove(answerList.get(answer));
            println("wrong");
          }
        }
      }else{
        isStartAnswer = true;
      }
    }
  }
  int getTouchAnswerArea(){
    if(mouseX > 40 && mouseX < 530 && mouseY > 560 && mouseY < 610){
      return 0;
    }else if(mouseX > 550 && mouseX < 1040 && mouseY > 560 && mouseY < 610){
      return 1;
    }else if(mouseX > 40 && mouseX < 530 && mouseY > 630 && mouseY < 680){
      return 2;
    }else if(mouseX > 550 && mouseX < 1040 && mouseY > 630 && mouseY < 680){
      return 3;
    }
    return -1;
  }
}
