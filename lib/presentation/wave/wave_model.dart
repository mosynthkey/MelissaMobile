import 'package:flutter/material.dart';

class WaveModel extends ChangeNotifier {
  int menuIndex = 0;

  Future init() async {
    notifyListeners();
  }

  void changeIndex(int index) {
    menuIndex = index;
    notifyListeners();
  }
}
