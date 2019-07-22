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
  fill(235,240,242);
  rect(30,550,1020,140);//下方內框
  
  stage.display();
  status.display();
}
void init(){
  status = new Status();
  status.setName("Bitify");
  ArrayList<Question> questionList = new ArrayList<Question>();
  String[] answers;
  answers = new String[]{"Jupyter Notebook","Spyder","IPython","python.org"};
  questionList.add(new Question("以下那一個 Python 開發工具比較方便幫助你除錯？\n(Which tool can help you debugging easily?)",answers,2));
  answers = new String[]{"屬於低階語言，特別適合控制微處理機","專門為人工智慧設計的語言","使用直譯器, 而非編譯器來編譯執行程式","簡限於 Windows 平台，蘋果電腦無法開發 Python 程式"};
  questionList.add(new Question("關於 Python 何者正確？\n(About Python, which one is correct?)",answers,3));
  answers = new String[]{"可到 Python.org 的官網下載安裝","具備快速鍵，方便編寫程式","可以切換不同的佈景模式","可透過 Anaconda 來安裝與啟動 "};
  questionList.add(new Question("關於 Spyder 以下何者錯誤？\n(About Spyder, what is not correct?)",answers,1));
  stage = new Stage(questionList);
}
void mousePressed(){
  stage.questionList.get(stage.index).mousePressed();
}
