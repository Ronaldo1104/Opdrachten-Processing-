class Player{
  //variables
  int x;
  int y;

  int w;
  int h;


  boolean isMovingLeft;
  boolean isMovingRight;

  boolean isJumping;
  boolean isFalling;

  int speed;

  int jumpHeight;
  int highestY;



  Player(int startingX, int startingY, int startingW, int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;

    isMovingLeft = false;
    isMovingRight = false;

    isJumping = false;
    isFalling = false;

    speed = 7;

    jumpHeight = 300;
    highestY = y - jumpHeight;
  }

  //Functies

  void render() {
    rectMode(CENTER);
    rect(x,y,w, h);
  }


  void move(){
    if (isMovingLeft == true){
      x -= speed;   // x = x - speed;
    }

    if (isMovingRight == true){
      x += speed; // x = x + speed;
    }
  }

  void jumping(){
    if ( isJumping == true) {
      y -= speed;
    }
  }

  void falling(){
    if (isFalling == true) {
      y += speed;
    }
  }

  //dit zorgt er voor als je springt en een bepaalde hoogte bereikt dan stopt het met springen
  void topOfJumping(){
    if ( y <= highestY) {
      isJumping = false;
      isFalling = true;
    }
  }

  void land(){
    if ( y >= height - h/2){
      isFalling = false;
      y = height - h/2;
    }
  }
  
}
