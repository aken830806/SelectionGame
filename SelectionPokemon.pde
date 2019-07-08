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
  rect(0,520,width,200);
  rect(30,550,1020,140);
  
  stage.display();
  status.display();
}
void init(){
  status = new Status();
  status.setName("Bitify");
  stage = new Stage(5);
}
