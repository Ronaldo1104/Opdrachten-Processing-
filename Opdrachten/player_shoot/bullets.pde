class Bullet {
  // variables


  float x;
  float y;
  float d;
  float speed;

  boolean shouldRemove;


  // constructor
  Bullet(float startingX, float startingY){
    x = startingX;
    y = startingY;

    // D = de groote van de bullets
     d = 10;
    speed = 15;

    shouldRemove = false;


  }

  void render(){
    //Dit zijn circles of tegelijkertijd bullets
    circle(x, y, d);
  
  }

  void move(){
    y -= speed;      

  }
  void checkRemove(){
    if (y < 0){
      shouldRemove = true;
      y -= speed;      
 
    }
  }
  
  String toString(){
    return ""+y;
  }

  void shootEnemy(Enemy anEnemy){
 
      if (y - (d/2) <= anEnemy.y + anEnemy.h && x + (d/2) >= anEnemy.x && x - (d/2) <= anEnemy.x + anEnemy.w) {
        
       // anEnemy.shouldRemove = true; //<>//
        
        anEnemy.reset();
       shouldRemove = true;
    }
  }
}
