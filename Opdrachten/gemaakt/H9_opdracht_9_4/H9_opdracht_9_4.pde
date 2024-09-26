void setup(){ 
  size(800,800);
}


void draw(){
  background(0,0,0);

  stroke(255,255,255);
  
 //rect(100,100,100,100);
vierkant(100,100,100,100);
}
  
 
void vierkant (int x,int y,int w,int h){
  
  line(x+w,y,x+w,y+h);
  // rechter lijn 
  line(x,y,x,y+h);
// linkerlijn 
  line(x,y,x+w,y);
  
 //boven lijn 
 
  line(x,y+h,x+w,y+h);
    //onder lijn 
    
    
    
    
 }
