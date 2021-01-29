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
List rALPHABET = ALPHABET.reversed.toList();
List encryptWord = [];
List decryptWord = [];
bool isCriptor;
List currentKey;
// int lData;

criptor<String>(
  String string,
  int lengthData,
) {
  int encryptStep;
  int decryptStep;
  // lData = lengthData;
  var randomizer = new Random().nextInt(9);
  var keyList = List.generate(lengthData, (_) => randomizer);

  print("ИСХОДНАЯ СТРОКА $string");

  List word = string.toString().toLowerCase().split("");
  // print("keyStep: $keyList");

  // for (var i = 0; i < word.length; i++) {
  //   var step = int.parse(keyList[i].toString());
  //   if (isCriptor) {
  //     wordStep = ALPHABET.indexOf(word[i]) + step;
  //   } else
  //     wordStep = ALPHABET.indexOf(word[i]) - step;

  //   if (wordStep >= 26) {
  //     newWord.add(ALPHABET[step - 1]);
  //   }
  //   if (wordStep <= -1) {
  //     List rALPHABET = ALPHABET.reversed.toList();
  //     print(rALPHABET);
  //     int rwordStep = rALPHABET.indexOf(word[i]) - step;
  //     newWord.add(rALPHABET[rwordStep - 1]);
  //   } else
  //     newWord.add(ALPHABET[wordStep]);
  // }
  for (var i = 0; i < word.length; i++) {
    var step = int.parse(keyList[i].toString());

    // currentKey = int.parse(keyList[i].toString());
    switch (isCriptor) {
      case true:
        {
          encryptStep = ALPHABET.indexOf(word[i]) + step;
          if (encryptStep >= 26) {
            encryptWord
                .add(ALPHABET[step - 1 - (25 - ALPHABET.indexOf(word[i]))]);
          } else
            encryptWord.add(ALPHABET[encryptStep]);

          currentKey = keyList;
        }
        break;
      case false:
        {
          var rstep = int.parse(currentKey[i].toString());
          decryptStep = ALPHABET.indexOf(word[i]) - rstep;
          if (decryptStep < 0) {
            decryptWord.add(ALPHABET[26 + decryptStep]);
          } else {
            decryptWord.add(ALPHABET[decryptStep]);
          }
        }
        break;
    }
    print("КОНЕЧНАЯ СТРОКА ${encryptWord.join()}");
  }
}
