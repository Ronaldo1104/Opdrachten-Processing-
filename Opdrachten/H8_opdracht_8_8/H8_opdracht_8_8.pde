int antwoord = 0;
int getallenEen = 0;
int getallenTwee = 1;


for(int i = 0; i < 10; i++){
  antwoord = getallenEen + getallenTwee;
  println(antwoord + "=" + getallenEen + getallenTwee);
  getallenEen = getallenTwee;
  getallenTwee = antwoord;
  
}
