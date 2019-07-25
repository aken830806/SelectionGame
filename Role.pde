class Role{
  float currentX,currentY;
  float x,y;
  float goOut;
  float speed = 3;
  boolean isMoving;
  boolean willDead = false;
  
  Role(float currentX,float currentY,float goIn,float goOut){
    this.currentX = currentX;
    this.currentY = currentY;
    this.y = currentY;
    this.x = goIn;
    this.goOut = goOut;
  }
  void display(){
    fill(255);
    if(willDead){
      rect(currentX,currentY,300,y-currentY);
    }else{
      rect(currentX,currentY,300,300);
    }
    if(abs(currentX-x) > speed){
      isMoving = true;
      if(currentX < x){
        currentX += speed;
      }else{
        currentX -= speed;
      }
    }else if(abs(currentY-y) > speed){
      isMoving = true;
      if(currentY < y){
        currentY += speed;
      }else{
        currentY -= speed;
      }
    }else{
      isMoving = false;
      if(willDead){
        stage.index += 1;
      }
    }
  }
  void dead(){
    y = goOut;
    willDead = true;
  }
}
