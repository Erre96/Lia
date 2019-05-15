import 'package:flutter/material.dart';
//import 'package:list_view/myStrings.dart';

class Questions {
  int sum;

  final List<String> questionsAlt1 = new List<String>();
  final List<String> questionsAlt2 = new List<String>();

  final List<String> letterValueAlt1 = new List<String>();
  final List<String> letterValueAlt2 = new List<String>();

  List<bool> markedAlt1 = new List<bool>();
  List<bool> markedAlt2 = new List<bool>();

  int counterA;
  int counterB;
  int counterC;
  int counterD;
  int counterE;
  
  String leadingCounter;

  Color errorMessageColor;

  Color red = Color.fromRGBO(255, 0, 0, 100);
  Color invisible = Color.fromRGBO(0, 0, 0, 0);

void resetResults()
{
  counterA = 0;
  counterB = 0;
  counterC = 0;
  counterD = 0;
  counterE = 0;
}
  void calculateResults() {
    resetResults();
    for (int x = 0; x < sum; x++) {
      if (markedAlt1[x] == true) {
        String letter = letterValueAlt1[x];
        handleLetter(letter);
      } else if (markedAlt2[x] == true) {
        String letter = letterValueAlt2[x];
        handleLetter(letter);
      }
    }
    print(counterA.toString());
    print(counterB.toString());
    print(counterC.toString());
    print(counterD.toString());
    print(counterE.toString());
    setLoveLanguage();
  }

  void handleLetter(String letter) {
    if (letter == "A") {
      counterA++;
    }
    if (letter == "B") {
      counterB++;
    }
    if (letter == "C") {
      counterC++;
    }
    if (letter == "D") {
      counterD++;
    }
    if (letter == "E") {
      counterE++;
    }
  }

  void setLoveLanguage(){
    leadingCounter = "A";
    int compareValue = counterA;

    if(compareValue < counterB)
    {
      compareValue = counterB;
      leadingCounter = "B";
    }

    if(compareValue < counterC)
    {
      compareValue = counterC;
      leadingCounter = "C";
    }

    if(compareValue < counterD)
    {
      compareValue = counterD;
      leadingCounter = "D";
    }
    if(compareValue < counterE)
    {
      compareValue = counterE;
      leadingCounter = "E";
    }

    print('Ditt kärleksspråk är $leadingCounter');
  }

  bool checkIfFinished() {
    int i = 0;
    while (i < sum) {
      if (markedAlt1[i] == false && markedAlt2[i] == false) {
        print("You are not finished yet.");
        errorMessageColor = red;
        break;
      } else
        i++;
      if (i >= sum) {
        print("Well done. You may proceed.");
        calculateResults();
        return true;
      }
    }
    return false;
  }

  Questions() {
    leadingCounter = "";
    counterA = 0;
    counterB = 0;
    counterC = 0;
    counterD = 0;
    counterE = 0;
    
    errorMessageColor = invisible;
    sum = 30;
    for (int i = 0; i < sum; i++) {
      markedAlt1.add(false);
      markedAlt2.add(false);
    }

    //0
    questionsAlt1.add('Min partners kärleksmeddelanden får mig att må bra.');
    questionsAlt2.add('Jag älskar min partners kramar');
    letterValueAlt1.add('A');
    letterValueAlt2.add('E');

    //1
    questionsAlt1.add('Jag tycker om att vara själv med min partner.');
    questionsAlt2
        .add('Jag känner mig älskad när min partner hjälper mig göra saker');
    letterValueAlt1.add('B');
    letterValueAlt2.add('D');

    //2
    questionsAlt1.add('Att få speciella gåvor av min partner gör mig lycklig');
    questionsAlt2.add('Jag njuter av långa resor med min partner');
    letterValueAlt1.add('C');
    letterValueAlt2.add('B');

    //3
    questionsAlt1
        .add('Jag känner mig älskad när min partner tar hand om tvätten.');
    questionsAlt2.add('Jag tycker om när min partner rör vid mig.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('E');

    //4
    questionsAlt1
        .add('Jag känner mig älskad när min partner lägger arnen om mig.');
    questionsAlt2.add(
        'Jag vet att min partner älskar mig för hen överraskar mig med presenter');
    letterValueAlt1.add('E');
    letterValueAlt2.add('C');

    //5
    questionsAlt1
        .add('Jag tycker om att gå nästan vart som helst med min partner.');
    questionsAlt2.add('Jag tycker om att hålla min partners hand.');
    letterValueAlt1.add('B');
    letterValueAlt2.add('E');

    //6
    questionsAlt1.add('Jag uppskattar de presenter min partner ger mig.');
    questionsAlt2.add('Jag älskar höra min partner säga att hen älskar mig.');
    letterValueAlt1.add('C');
    letterValueAlt2.add('A');

    //7
    questionsAlt1.add('Jag vill att min partner ska sitta nära mig.');
    questionsAlt2.add(
        'Min partner säger till mig att jag är snygg och det tycker jag om.');
    letterValueAlt1.add('E');
    letterValueAlt2.add('A');

    //8
    questionsAlt1.add('Att spendera tid med min partner gör mig lycklig.');
    questionsAlt2
        .add('Även den minsta gåva från min partner är viktig för mig.');
    letterValueAlt1.add('B');
    letterValueAlt2.add('C');

    //9
    questionsAlt1.add(
        'Jag känner mig älskad när min partner säger att hen är stolt över mig.');
    questionsAlt2
        .add('När min partner lagar mat åt mig så vet jag att hen älskar mig.');
    letterValueAlt1.add('A');
    letterValueAlt2.add('D');

    //10
    questionsAlt1.add(
        'Oavsett vad vi gör så älskar jag att göra saker med min partner.');
    questionsAlt2
        .add('Uppmuntrande kommentarer från min partner får mig att må bra.');
    letterValueAlt1.add('B');
    letterValueAlt2.add('A');

    //11
    questionsAlt1.add(
        'Små saker som min partner gör för mig betyder mer för mig än saker hen säger.');
    questionsAlt2.add('Jag älskar att krama min partner.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('E');

    //12
    questionsAlt1.add('Min partners uppskattning betyder mycket för mig.');
    questionsAlt2.add(
        'Det betyder mycket för mig att min partner ger mig presenter jag verkligen gillar.');
    letterValueAlt1.add('A');
    letterValueAlt2.add('C');

    //13
    questionsAlt1
        .add('Bara att vara i närheten av min partner får mig att må bra.');
    questionsAlt2.add('Jag älskar när min partner masserar mig.');
    letterValueAlt1.add('B');
    letterValueAlt2.add('E');

    //14
    questionsAlt1.add(
        'Min partners reaktioner på mina prestationer är så uppmuntrande.');
    questionsAlt2.add(
        'Det betyder mycket för mig när min partner hjälper mig med något jag vet att hen avskyr att göra.');
    letterValueAlt1.add('A');
    letterValueAlt2.add('D');

    //15
    questionsAlt1.add('Jag blir aldrig trött på min partners kyssar.');
    questionsAlt2.add(
        'Jag älskar att min partner visar äkta intresse för de saker jag tycker om att göra.');
    letterValueAlt1.add('E');
    letterValueAlt2.add('B');

    //16
    questionsAlt1
        .add('Jag kan räkna med att min partner hjälper mig med projekt.');
    questionsAlt2.add(
        'Jag blir fortfarande exalterad när jag öppnar repsenter från min partner.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('C');

    //17
    questionsAlt1.add(
        'Jag älskar när min partner ger mig komplimanger för mitt utseende.');
    questionsAlt2.add(
        'Jag älskar att min partner lyssnar på mina idéer och inte dömer eller kritiserar dem.');
    letterValueAlt1.add('A');
    letterValueAlt2.add('B');

    //18
    questionsAlt1.add(
        'Jag kan inte låta bli att ta på min partner när hen är nära mig.');
    questionsAlt2.add(
        'Ibland gör min partner ärenden åt mig och jag uppskattar det verkligen.');
    letterValueAlt1.add('E');
    letterValueAlt2.add('D');

    //19
    questionsAlt1.add(
        'Min partner förtjänar en belöning för alla de saker hen hjälper mig med.');
    questionsAlt2.add(
        'Ibland så är jag förundrad över hur omtänksamma min partners gåvor till mig är.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('C');

    //20
    questionsAlt1.add('Jag älskar att ha min partners odelade uppmärksamhet.');
    questionsAlt2.add('Att ta hand om hemmet är en viktig gest av kärlek');
    letterValueAlt1.add('B');
    letterValueAlt2.add('D');

    //21
    questionsAlt1.add(
        'Jag ser fram emot att få se vad min partner ger mig i födelsedagspresent.');
    questionsAlt2.add(
        'Jag blir aldrig trött på att höra min partner tala om hur viktig jag är för hen.');
    letterValueAlt1.add('C');
    letterValueAlt2.add('A');

    //22
    questionsAlt1.add(
        'Min partner visar hur mycket hen älskar mig genom att ge mig presenter.');
    questionsAlt2.add(
        'Min partner visar sin kärlek genom att hjälpa mig utan att jag behöver be om hjälp.');
    letterValueAlt1.add('C');
    letterValueAlt2.add('D');

    //23
    questionsAlt1.add(
        'Min partner avbryter mig inte när jag pratar och det uppskattar jag.');
    questionsAlt2
        .add('Jag blir aldrig trött på att få presenter från min partner.');
    letterValueAlt1.add('B');
    letterValueAlt2.add('C');

    //24
    questionsAlt1.add(
        'Min partner märker när jag är trött och hen är bra på att fråga hur hen kan hjälpa mig.');
    questionsAlt2.add(
        'Det spelar ingen roll vart vi åker, jag bara älskar att se platser tillsammans med min partner.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('B');

    //25
    questionsAlt1.add('Jag älskar att ha sex och närhet med min partner.');
    questionsAlt2.add('Jag älskar överraskningsgåvor från min partner.');
    letterValueAlt1.add('E');
    letterValueAlt2.add('C');

    //26
    questionsAlt1.add('Min partners uppmuntrande ord ger mig självförtroende.');
    questionsAlt2
        .add('Jag älskar att se på filmer tillsammans med min partner.');
    letterValueAlt1.add('A');
    letterValueAlt2.add('B');

    //27
    questionsAlt1.add(
        'Jag skulle inte kunna önska mig bättre presenter än de jag får från min partner.');
    questionsAlt2.add('Jag kan inte hålla händerna borta från min partner.');
    letterValueAlt1.add('C');
    letterValueAlt2.add('E');

    //28
    questionsAlt1.add(
        'Det betyder mycket för mig när min partner hjälper mig trots att hen är upptagen av annat.');
    questionsAlt2.add(
        'Det får mig att verkligen känna mig bra när min partner säger att hen uppskattar mig.');
    letterValueAlt1.add('D');
    letterValueAlt2.add('A');

    //29
    questionsAlt1.add(
        'Jag älskar att krama och pussa min partner när vi varit ifrån varandra ett tag.');
    questionsAlt2.add(
        'Jag älskar höra min partner säga att hen tror på mig och min förmåga.');
    letterValueAlt1.add('E');
    letterValueAlt2.add('A');
  }
}
