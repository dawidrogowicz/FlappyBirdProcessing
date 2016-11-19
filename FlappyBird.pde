Bird bird;
float gameSpeed = 4;
Pipe[] pipe = new Pipe[2];
void setup(){
  fullScreen();
  smooth(2);
  bird = new Bird();
  for(int i=0;i<2;i++){
   pipe[i] = new Pipe(i);
  }
}
    
   void mousePressed(){
     if(bird.y>=0 && gameSpeed != 0){
        bird.speed-=16; 
     }
   }
   
   void keyPressed(){
     if(bird.y>=0 && gameSpeed != 0){
       bird.speed-=16; 
     }
   }
      
void draw(){
  background(40);
  bird.update();
  for(int i=0;i<2;i++){
     pipe[i].update();
     pipe[i].show();
  
       if(bird.x+17>=pipe[i].x && bird.x<pipe[i].x && (bird.y-17<pipe[i].y  || bird.y+12>pipe[i].y+140)){
       bird.x-= gameSpeed;
       }
       if(bird.x+17>pipe[i].x && bird.x-15<pipe[i].x+pipe[i].PipeWidth && bird.y-17<=pipe[i].y && !(bird.y<=pipe[i].y || bird.y>=pipe[i].y+140)){
       bird.speed=0;
       bird.y=pipe[i].y+17;
       bird.x-= gameSpeed*0.4;
       }
       if(bird.x+17>pipe[i].x && bird.x-15<pipe[i].x+pipe[i].PipeWidth  && bird.y+17>=pipe[i].y+140 && !(bird.y<=pipe[i].y || bird.y>=pipe[i].y+140)){
       bird.speed=0;
       bird.y=pipe[i].y+123; 
       bird.x-= gameSpeed*0.5;
       }
    }    
  bird.show();
}