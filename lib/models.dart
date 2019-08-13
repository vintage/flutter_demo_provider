import 'dart:math';

import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  String _name = "";

  String get name => _name;
  set name(String value) {
    _name = value;
    notifyListeners();
  }
}

class ColorModel extends ChangeNotifier {
  double _red = 0;
  double _green = 0;
  double _blue = 0;

  double get red => _red;
  set red(double value) {
    _red = value;
    notifyListeners();
  }

  double get green => _green;
  set green(double value) {
    _green = value;
    notifyListeners();
  }

  double get blue => _blue;
  set blue(double value) {
    _blue = value;
    notifyListeners();
  }

  void randomize() {
    var random = Random();

    _red = random.nextInt(256).toDouble();
    _green = random.nextInt(256).toDouble();
    _blue = random.nextInt(256).toDouble();
    notifyListeners();
  }
}
