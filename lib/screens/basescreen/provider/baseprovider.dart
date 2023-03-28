
import 'package:flutter/material.dart';
import 'package:instagram/screens/profilescreen/view/profilescreen.dart';
import 'package:instagram/screens/searchscreen/view/searchscreen.dart';

class Baseprovider extends ChangeNotifier
{
  int currentNavigationIndex = 0;

  void changeNavigationIndex(int value)
  {
    currentNavigationIndex = value;
    notifyListeners();
  }

  List screenList = [
    Profilescreen(),
    Searchscreen(),
    Profilescreen(),
    Profilescreen(),
    Profilescreen(),
  ];
}