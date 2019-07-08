class Status{
  String name;
  int HP = 3;
  ArrayList<Question> questionList;
  
  Status(){
  }
  void display(){
    rect(720,400,350,110,20,20,20,20);//外框
    fill(0);
    textFont(enFont,30);
    text(name,750,450);//name
    textFont(enFont,24);
    text("HP",750,490);
    int count = 0;
    int x = 800;
    while(count < 3){//lost HP
      if(count < HP){
        fill(255);
      }else{
        fill(0);
      }
      rect(x,465,30,30);
      x += 40;
      count += 1;
    }
    count = 0;//button
    x = 1000;
    while(count < 2){
      ellipse(x,485,30,30);
      x += 40;
      count += 1;
    }
  }
  void setName(String name){
    this.name = name;
  }
}
