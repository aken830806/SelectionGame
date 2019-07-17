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
            rect(30,550,510,70);
            fill(0);
            text(answerList.get(0),285-textWidth(answerList.get(0))/2,595);//285 = 30+510/2
            break;
          case 1:
            rect(540,550,510,70);
            fill(0);
            text(answerList.get(1),795-textWidth(answerList.get(1))/2,595);//795 = 540+510/2
            break;
          case 2:
            rect(30,620,510,70);
            fill(0);
            text(answerList.get(2),285-textWidth(answerList.get(2))/2,665);//285 = 30+510/2
            break;
          case 3:
            rect(540,620,510,70);
            fill(0);
            text(answerList.get(3),795-textWidth(answerList.get(3))/2,665);//795 = 540+510/2
            break;
          default:
            println("Too many answers.");
        }
      }
    }
  }
  void mousePressed(){
    if(mouseX > 0 && mouseX < width && mouseY > 520 && mouseY < 720){
      isStartAnswer = true;
    }
  }
}
