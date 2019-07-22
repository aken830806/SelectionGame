class Button{
  int x,y,diameter;
  color normalColor,Highlight;
  
  Button(int x,int y,int diameter,color normalColor,color Highlight){
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.normalColor = normalColor;
    this.Highlight = Highlight;
  }
  
  protected boolean isOver()  {
    if (mouseX >= x-diameter/2 && mouseX <= x+diameter/2 && 
        mouseY >= y-diameter/2 && mouseY <= y+diameter/2) {
      return true;
    }
    else {
      return false;
    }
  }
  void display(){
    if (isOver()) {
        fill(Highlight);
    }else {
      fill(normalColor);
    }
    ellipse(x,y,diameter,diameter);
  }
}
