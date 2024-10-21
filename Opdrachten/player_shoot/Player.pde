class Player {
  int x, y, w, h;
  boolean isMovingLeft, isMovingRight, isJumping, isFalling;
  int speed, jumpHeight, highestY;

  Player(int startingX, int startingY, int startingW, int startingH) {
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    isMovingLeft = isMovingRight = isJumping = isFalling = false;
    speed = 10;
    jumpHeight = 300;
    highestY = y - jumpHeight;
  }

  void render() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void move() {
    if (isMovingLeft) x -= speed;
    if (isMovingRight) x += speed;
  }

  void jumping() {
    if (isJumping) y -= speed;
  }

  void falling() {
    if (isFalling) y += speed;
  }

  void topOfJumping() {
    if (y <= highestY) {
      isJumping = false;
      isFalling = true;
    }
  }

  void land() {
    if (y >= height - h / 2) {
      isFalling = false;
      y = height - h / 2;
    }
  
  }

  boolean checkCollision(Enemy anEnemy) {
    return (x + w / 2 > anEnemy.x && x - w / 2 < anEnemy.x + anEnemy.w &&
            y + h / 2 > anEnemy.y && y - h / 2 < anEnemy.y + anEnemy.h);
  }
}
