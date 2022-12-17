import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';
import 'package:japaneseletterquiz/data_letter.dart';

class CompareProvider extends ChangeNotifier {
  String _result = '';
  String get result => _result;

  set result(String text) {
    const kanaKit = KanaKit();
    if (kanaKit.toHiragana(text) == _randomLetter) {
      _result = 'Benar';
    } else {
      _result = 'Salah';
    }

    notifyListeners();
  }

  String _randomLetter = '';
  String get randomLetter => _randomLetter;
  String get randomLeterGenerate {
    const kanaKit = KanaKit();
    String res = kanaKit.toHiragana(randomItem);
    _randomLetter = res;
    return res;
  }
}
