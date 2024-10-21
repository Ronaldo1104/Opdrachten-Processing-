class Bullet { //<>//
  float x, y, d, speed;
  boolean shouldRemove;

  Bullet(float startingX, float startingY) {
    x = startingX;
    y = startingY;
    d = 10;
    speed = 15;
    shouldRemove = false;
  }

  void render() {
    circle(x, y, d);
  }

  void move() {
    y -= speed;      
  }

  void checkRemove() {
    if (y < 0) {
      shouldRemove = true;
    }
  }
  
  boolean shootEnemy(Enemy anEnemy) {
    if (y - (d / 2) <= anEnemy.y + anEnemy.h && 
        x + (d / 2) >= anEnemy.x && 
        x - (d / 2) <= anEnemy.x + anEnemy.w) {
      
      anEnemy.reset();
      shouldRemove = true;
      return true; // Indicates the enemy was hit
    }
    return false; // No hit
  }
}
