String zoeknaam = "k";
boolean gevonden;
String[] Tekst = {"H", "o", "i", " ", "i", "k", " ", "b", "e", "n", " ", "P", "i", "e", "t", "."};

void setup() {

  gevonden = false;

    for(int r = 0; r < Tekst.length; r++){
    if(zoeknaam == Tekst[r]){
      gevonden = true;
    }

    }
    
if(gevonden){
  print("Ik");
  
}

 

}
