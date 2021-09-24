import 'package:flutter/material.dart';
import '../constants/constant.dart';

class ChangeTheme extends ChangeNotifier {
  bool value = false;
  MaterialColor colourPrimary = Constants.colourAccent;
  MaterialColor colourAccent = Constants.colourAccent;

  void changeColor(bool value) {
    if (value == false) {
      colourPrimary = Constants.colourAccent;
      colourAccent = Constants.colourPrimary;
    } else {
      print('------------PURPLE-------');
      colourPrimary = Constants.colourPrimary;
      colourAccent = Constants.colourAccent;
    }
    notifyListeners();
  }

  void changeValue(bool val) {
    print('VAL CALLED $val');
    changeColor(val);
    value = val;
  }
}
