class Board{
  color beige, brown;
  Board(){
    beige = color( 242, 237, 188);
    brown = color( 144, 119, 77);
  }
  void display(){
    loadPixels();
    for(int x = 0; x < 8; x++){
      for(int y = 0; y < 8; y ++){
        if((y + x) % 2 == 0){
          for(int i = x*scale; i < x*scale + scale; i++){
           for(int j = y*scale; j < y*scale + scale; j++){
             pixels[width*j + i] = beige; 
             // beige snap ik nog niet wat het is 
         }
       }
     }
     else{
       for(int i = x*scale; i < x*scale + scale; i++){
      for(int j = y*scale; j < y*scale + scale; j++){
        pixels[width*j + i] = brown;
        }
       }
     }
   }
  }
  updatePixels();
  }
}
      
       
