void setup() {

  size(600, 600);
  background(432, 324, 888);
  tekenDriehoek(100, 100, 200, 200, 300, 100);
}

void draw() {
}


void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {

  //x1 = 100;
  //y1 = 100;


  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3); 
  line(x3, y3, x1, y1);
}
