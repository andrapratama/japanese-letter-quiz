import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';

class CompareProvider extends ChangeNotifier {
  String _guessLetter = '';
  String get guessLetter => _guessLetter;
  set guessLetter(String value) {
    _guessLetter = randomNewLetter();
    notifyListeners();
  }

  // String _result = '';
  // String get result => _result;

  // String _guessLetter = '';
  // String get guessLetter => _guessLetter;
  // set guessLetter(String text) {
  //   _guessLetter = randomNewLetter();
  //   notifyListeners();
  // }

  String randomNewLetter() {
    const kanaKit = KanaKit();
    var randomItem = list[_random.nextInt(list.length)];
    return kanaKit.toHiragana(randomItem);
  }

  // String matchingLetter(text) {
  //   const kanaKit = KanaKit();
  //   if (kanaKit.toHiragana(text) == _guessLetter) {
  //     _result = 'Benar';
  //   } else {
  //     _result = 'Salah';
  //   }
  //   notifyListeners();
  //   return _result;
  // }
}

var list = ["a", "i", "u", "e", "o"];

// generates a new Random object
final _random = Random();

// generate a random index based on the list length
// and use it to retrieve the element