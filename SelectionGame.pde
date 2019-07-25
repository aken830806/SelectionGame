PFont enFont,chFont;
Status status;
Stage stage;
Role player;

void setup(){
  size(1080,720);
  enFont = createFont("Arial",18);
  chFont = createFont("微軟正黑體",18);
  init();
}
void draw(){
  fill(225);//背景
  rect(0,0,width,height);
  
  player.display();
  
  fill(255);
  rect(0,520,width,200);//下方大框
  fill(235,240,242);
  rect(30,550,1020,140);//下方內框
  
  stage.display();
  status.display();
}
void init(){
  status = new Status();
  status.setName("Ash");
  ArrayList<Question> questionList = new ArrayList<Question>();
  String[] answers;
  answers = new String[]{"Jupyter Notebook","Spyder","IPython","python.org"};
  questionList.add(new Question("以下那一個 Python 開發工具比較方便幫助你除錯？\n(Which tool can help you debugging easily?)",answers,2));
  answers = new String[]{"屬於低階語言，特別適合控制微處理機\n(It is a low level language, especially designed for controlling micro-controller)","專門為人工智慧設計的語言\n(It is especially design for artifitial intelligent)","使用直譯器 (interpreter), 而非編譯器 (compiler) 來編譯執行程式]\n(Use interpreter, rather than compiler mechanism for running the code)","簡限於 Windows 平台，蘋果電腦無法開發 Python 程式\n(Only for Windown, not for MAC computer)"};
  questionList.add(new Question("關於 Python 何者正確？\n(About Python, which one is correct?)",answers,3));
  answers = new String[]{"可到 Python.org 的官網下載安裝\n(You can download and install from Python.org) ","具備快速鍵，方便編寫程式\n(It has some short-cut key for fast and convenient coding)","可以切換不同的佈景模式\n(Can change the theme mode)","可透過 Anaconda 來安裝與啟動\n(You can download and install from Anaconda)"};
  questionList.add(new Question("關於 Spyder 以下何者錯誤？\n(About Spyder, what is not correct?)",answers,1));
  stage = new Stage(questionList);
  player = new Role(-330,270,50,270);
}
void mousePressed(){
  if(status.resetButton.isOver()){//reset
    init();
  }
  if(stage.index < stage.questionList.size()){
    stage.questionList.get(stage.index).mousePressed();
  }
}
