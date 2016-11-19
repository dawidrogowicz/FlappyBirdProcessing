class Bird{
 float y = height/2-60; 
 float x = 200;
 float gravity =0.5;
 float speed = -10;
   
  void update(){
   speed+=gravity;
   y+=speed; 
   
   
       if(y>height){
         y=height;
         speed=0;
       }
        if(y<0){
          y=0;
        }
       if(x<0){
       gameSpeed=0;
       x=0;
       }
       if(!(x>200)&& gameSpeed!=0){
       x+=0.1; 
       }
  }
            
  void show(){
    noStroke();
    fill(0,200,80);
    ellipse(x,y,34,34);
  }
}