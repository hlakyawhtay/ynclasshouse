import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  Size _size = const Size(120, 54);

  void initSize(BuildContext context) {
    _size = MediaQuery.of(context).size;
    notifyListeners();
  }

  Size get size => _size;
}
