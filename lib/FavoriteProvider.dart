import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteProvider with ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;
  bool isExist(DocumentSnapshot document) {
    return _favorites.contains(document.id);
  }

  void toggleFavorite(DocumentSnapshot document) {
    final item = document.id;
    if (_favorites.contains(item)) {
      _favorites.remove(item);
    } else {
      _favorites.add(item);
      _favorites.add(item);
    }
    notifyListeners();
  }
}
