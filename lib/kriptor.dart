import 'dart:math';

const List<String> ALPHABET = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];
List newWord = [];
criptor<String>(String string, int length, bool isCriptor) {
  var randomizer = new Random();
  var keyList = List.generate(length, (_) => randomizer.nextInt(9));
  int wordStep;

  print("ИСХОДНАЯ СТРОКА $string");

  List word = string.toString().toLowerCase().split("");
  print("keyStep: $keyList");

  for (var i = 0; i < word.length; i++) {
    var step = int.parse(keyList[i].toString());
    if (isCriptor) {
      wordStep = ALPHABET.indexOf(word[i]) + step;
    } else
      wordStep = ALPHABET.indexOf(word[i]) - step;

    if (wordStep >= 26) {
      newWord.add(ALPHABET[step - 1]);
    }
    if (wordStep <= -1) {
      List rALPHABET = ALPHABET.reversed.toList();
      print(rALPHABET);
      int rwordStep = rALPHABET.indexOf(word[i]) - step;
      newWord.add(rALPHABET[rwordStep - 1]);
    } else
      newWord.add(ALPHABET[wordStep]);
  }
  print("КОНЕЧНАЯ СТРОКА ${newWord.join()}");
}
