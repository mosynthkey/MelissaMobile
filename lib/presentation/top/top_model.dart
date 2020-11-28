import 'package:flutter/material.dart';

class TopModel extends ChangeNotifier {
  int menuIndex = 0;

  Future init() async {
    notifyListeners();
  }

  void changeIndex(int index) {
    menuIndex = index;
    notifyListeners();
  }
}
