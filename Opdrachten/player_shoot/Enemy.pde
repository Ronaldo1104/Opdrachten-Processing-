class Enemy {
  float x, y;
  int w, h;
  float speed = 3.5;
  boolean shouldRemove;

  Enemy(float startingX, float startingY, int startingW, int startingH) {
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    shouldRemove = false;
  }

  void render() {
    rect(x, y, w, h);
  }

  void move() {
    y += speed;
    if (y > height) {
      reset();
    }
  }

  void reset() {
    x = random(0, width);
    y = 0;
    shouldRemove = false;
  }
}
