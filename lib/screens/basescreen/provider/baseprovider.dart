
import 'package:flutter/material.dart';

class Baseprovider extends ChangeNotifier
{
  int currentNavigationIndex = 0;

  void changeNavigationIndex(int value)
  {
    currentNavigationIndex = value;
    notifyListeners();
  }
}