final int ANSWER_W = 490;//答案框寬度
final int ANSWER_H = 80;//答案框高度
final int ANSWER_GAP = 5;//答案框間隔
class Answer{
  int x,y;
  String content;
  boolean clicked = false;
  int fontSize;
  
  Answer(int x,int y,String content,int fontSize){
    this.x = x;
    this.y = y;
    this.content = content;
    this.fontSize = fontSize;
  }
  void display(){
    if(clicked){//答錯變灰
      fill(225);
    }else{
      fill(255);
    }
    rect(x,y,ANSWER_W,ANSWER_H);
    fill(0);
    textFont(chFont,fontSize);
    text(content,x+ANSWER_W/2-textWidth(content)/2,y+30);
  }
  boolean mousePressed(){
    if(mouseX > x && mouseX < x+ANSWER_W && mouseY > y && mouseY < y+ANSWER_H && !clicked){
      clicked = true;
      return true;
    }
    return false;
  }
}
