import 'package:flutter/material.dart';

class ImageNotifier extends ChangeNotifier {
  String _currentImagePath = "assets/images/blue-tesla.jpg";
  String get currentImagePath => _currentImagePath;

  void changeImage(MaterialColor color){
    if(color == Colors.blue){
      _currentImagePath = "assets/images/blue-tesla.jpg";
    }else if(color == Colors.red){
      _currentImagePath = "assets/images/red-tesla.jpeg";
    }else if(color == Colors.yellow){
      _currentImagePath = "assets/images/yellow-tesla.jpeg";
    }else if(color == Colors.grey){
      _currentImagePath = "assets/images/grey-tesla.jpeg";
    }else{
      _currentImagePath = "assets/images/blue-tesla.jpg";
    }
    notifyListeners();
  }
}