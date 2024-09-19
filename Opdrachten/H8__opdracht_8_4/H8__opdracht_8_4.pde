int xWaarde = 50;

size(500,500);
background(255,255,255);

for(int i = 0; i < 10; i++){
  for(int J = 0; J < 10; J++){
rect(xWaarde, 20,5,5);
   xWaarde += 15;
  }
}
