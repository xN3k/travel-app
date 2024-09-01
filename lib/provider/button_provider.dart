import 'package:flutter/material.dart';

class ButtonProvider extends ChangeNotifier {
  bool _isFavorite = true;
  int _favoriteCount = 0;

  bool get isFavorite => _isFavorite;
  int get favoriteCount => _favoriteCount;

  void favoriteButton() {
    if (_isFavorite) {
      _favoriteCount += 1;
      _isFavorite = false;
      notifyListeners();
    } else {
      _favoriteCount -= 1;
      _isFavorite = true;
      notifyListeners();
    }
  }
}
