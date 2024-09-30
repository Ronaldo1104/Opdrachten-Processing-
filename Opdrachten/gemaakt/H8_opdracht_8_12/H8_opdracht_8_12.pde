class Board{
  color beige, brown;
  Board(){
    beige = color( 242, 237, 188);
    brown = color( 144, 119, 77);
  }
  
  
  
  void display(){
  
    
    loadPixels();

    
    
    // gaat door totdat x 8 wordt. Voor iedere x, ga je door naar de volgende loop
    for(int x = 0; x < 8; x++){
      
      // gaat door totdat y 8 wordt. Voor iedere y, ga je door naar de volgende loop
      for(int y = 0; y < 8; y ++){
        
        // als x + y, een even getal is, ga door naar de for-loop
        if((y + x) % 2 == 0){
          
          // als je 0 telt tot 120 
          for(int i = x*scale; i < x*scale + scale; i++){ 
            
            //
           for(int j = y*scale; j < y*scale + scale; j++){
             
             //
             pixels[width*j + i] = beige; 
          
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
      
       
