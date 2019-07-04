PFont enFont;
void setup(){
  size(1080,720);
  enFont = createFont("Arial",18);
}
void draw(){
  fill(255);
  rect(0,520,width,200);
  rect(30,550,1020,140);
  line(55,55,55,455);
  int count = 0;
  int y = 55;
  while(count < 5){
    ellipse(55,y,35,35);
    y += 100;
    count += 1;
  }
  rect(720,400,350,110,20,20,20,20);
  fill(0);
  textFont(enFont,30);
  text("Bitify",750,450);
  textFont(enFont,24);
  text("HP",750,490);
  count = 0;
  int x = 800;
  while(count < 3){
    fill(255);
    rect(x,465,30,30);
    x += 40;
    count += 1;
  }
  count = 0;
  x = 1000;
  while(count < 2){
    ellipse(x,485,30,30);
    x += 40;
    count += 1;
  }
}
