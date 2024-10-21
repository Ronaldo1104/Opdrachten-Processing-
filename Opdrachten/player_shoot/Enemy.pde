class Enemy {
  float x;
  float y;
  int w;
  int h;

  float speed = 3.5;



  float teller = 1+1;




  boolean shouldRemove;
  boolean hitBottom = false;



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
  // dit laat de enemy naar beneden vallen
  void move() {
    y += speed;

    if (shouldRemove) {
      reset(); // Respawn de vijand
    } else {
      // Als de vijand onder het scherm gaat, reset dan
      if (y > height) {
        reset();
      }
    }
  }


  String toString() {
    return ""+ y;
  }

  void reset() {
    x = random(0, width);
    y = 0;
    shouldRemove = false;
  }
}
