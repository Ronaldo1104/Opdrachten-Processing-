
size(900,900);
background(255,255,255);

int sizeC = 100;

for(int i = 0; i < 50; i++){
  ellipse(100 - sizeC/2, 100 - sizeC/2, sizeC,250);
  sizeC = sizeC - 30;
}
