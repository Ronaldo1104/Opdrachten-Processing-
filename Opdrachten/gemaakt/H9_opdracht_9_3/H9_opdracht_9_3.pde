int mijnGetal;

void setup(){
  
println(mijnFunctie(50,20));
mijnGetal =( mijnFunctie(65,45));
println(mijnGetal);
}

void draw(){
  
}

int mijnFunctie(int getal1, int getal2){
   int antwoord;
   antwoord = (getal1 + getal2)/2;
   return antwoord;
   
}
