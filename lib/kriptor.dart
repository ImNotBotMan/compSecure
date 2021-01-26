import 'package:flutter/material.dart';

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

criptor<String>(String string, String key) {
  print("ИСХОДНАЯ СТРОКА $string");

  List word = string.toString().toLowerCase().split("");
  List newWord = [];
  List keyList = key.toString().split("");

  print("keyStep: $keyList");

  for (var i = 0; i < word.length; i++) {
    var step = int.parse(keyList[i].toString());
    int wordStep = ALPHABET.indexOf(word[i]) + step;
    if (wordStep >= 26) {
      newWord.add(ALPHABET[step]);
    } else
      newWord.add(ALPHABET[wordStep]);
  }
  print("КОНЕЧНАЯ СТРОКА ${newWord.join()}");
}
