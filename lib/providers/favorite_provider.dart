import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Widget> _tiles = [];
  List<Widget> get tiles => _tiles;

  void toggleFavorite(Widget tile) {
    final isExist = _tiles.contains(tile);
    if (isExist) {
      _tiles.remove(tile);
    } else {
      _tiles.add(tile);
    }
    notifyListeners();
  }

  bool isExist(Widget tile) {
    final isExist = _tiles.contains(tile);
    return isExist;
  }
}
