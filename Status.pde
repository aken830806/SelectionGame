class Status{
  String name;
  int HP = 3;
  ArrayList<Question> questionList;
  Button button1,button2;
  
  Status(){
    button1 = new Button(1000,485,30,255,0);
    button2 = new Button(1040,485,30,255,0);
  }
  void display(){
    fill(255);
    rect(720,400,350,110,20,20,20,20);//外框
    fill(0);
    textFont(enFont,30);
    text(name,750,450);//name
    textFont(enFont,24);
    text("HP",750,490);//HP
    int count = 0;
    int x = 800;
    while(count < 3){//剩餘HP
      if(count < HP){
        fill(255);
      }else{
        fill(0);
      }
      rect(x,465,30,30);
      x += 40;
      count += 1;
    }
    button1.display();
    button2.display();
  }
  void setName(String name){
    this.name = name;
  }
}
