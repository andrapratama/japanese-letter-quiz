import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';

class CompareProvider extends ChangeNotifier {
  String randomNewLetter() {
    const kanaKit = KanaKit();
    var randomItem = list[_random.nextInt(list.length)];
    return kanaKit.toHiragana(randomItem);
  }

  String _guessLetter = '';
  String get guessLetter => _guessLetter;
  set guessLetter(String value) {
    _guessLetter = '';
    _result = '';
    _guessLetter = value;
    notifyListeners();
  }

  String _result = '';
  String get result => _result;

  String get inputUser => '';
  set inputUser(String value) {
    const kanaKit = KanaKit();
    if (_guessLetter == '') {
      notifyListeners();
      _guessLetter = '';
      _result = '';
    } else if (kanaKit.toHiragana(value) == _guessLetter) {
      notifyListeners();
      _result = 'Benar';
    } else if (value == '') {
      notifyListeners();
      _result = '';
    } else {
      notifyListeners();
      _result = 'Salah';
    }
  }
}

var list = [
  "a",
  "i",
  "u",
  "e",
  "o",
  "ka",
  "ki",
  "ku",
  "ke",
  "ko",
  "sa",
  "shi",
  "su",
  "se",
  "so",
  "ta",
  "chi",
  "tsu",
  "te",
  "to",
  "na",
  "ni",
  "nu",
  "ne",
  "no",
  "ha",
  "hi",
  "fu",
  "he",
  "ho"
];

// generates a new Random object
final _random = Random();

// generate a random index based on the list length
// and use it to retrieve the element