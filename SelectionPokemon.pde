PFont enFont;
PFont chFont;
Status status;
Stage stage;

void setup(){
  size(1080,720);
  enFont = createFont("Arial",18);
  chFont = createFont("微軟正黑體",18);
  init();
}
void draw(){
  fill(255);
  rect(0,520,width,200);//下方大框
  rect(30,550,1020,140);//下方內框
  
  stage.display();
  status.display();
}
void init(){
  status = new Status();
  status.setName("Bitify");
  stage = new Stage(5);
  String[] answers = {"Jupyter Notebook","Spyder","IPython","python.org"};
  stage.questionList.add(new Question("以下那一個 Python 開發工具比較方便幫助你除錯？\n(Which tool can help you debugging easily?)",answers,2));
}
void mousePressed(){
  stage.questionList.get(stage.index).mousePressed();
}
