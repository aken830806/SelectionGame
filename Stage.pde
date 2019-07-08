class Stage{
  private int num;
  int index = 0;
  
  Stage(int num){
    this.num = num;
  }
  void display(){
    line(55,55,55,455);
    int count = 0;
    float y = 455;
    while(count < num){
      if(count == index){
        fill(0);
      }else{
        fill(255);
      }
      ellipse(55,y,35,35);
      y -= 400/(num-1);
      count += 1;
    }
  }
}
