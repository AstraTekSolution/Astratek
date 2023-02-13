import 'package:flutter/material.dart';

class PageViewProvider with ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
