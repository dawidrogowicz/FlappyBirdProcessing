class Pipe {
  float x;
  float PipeWidth = 100;
  float y= random(200, height-200);
  Pipe(int i){
    if(i==0){
     x= width;
    }else{
     x= width*1.5; 
    }
  }
  
  void update(){
   x-=gameSpeed; 
   if(x<-100){
    x=width; 
    y= random(200, height-200);
   }
  }
  
  void show(){
    fill(0,80,180);
    stroke(0,80,180);
    strokeWeight(5);
    rect(x, 0, PipeWidth, y);
    rect(x, y+140, PipeWidth, height-y-140);
    fill(0,100,255);
    rect(x, 0, PipeWidth*0.6, y);
    rect(x, y+140, PipeWidth*0.6, height-y-140);
  } 
  
}