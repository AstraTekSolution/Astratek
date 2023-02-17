import 'package:flutter/material.dart';

class PageViewProvider with ChangeNotifier {
  int currentIndex = 0;

  setCurrentPage(int page) {
    currentIndex = page;
    notifyListeners();
  }
}
