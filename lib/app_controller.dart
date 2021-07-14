import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool ligaDarkTheme = false;
  changeTheme() {
    ligaDarkTheme = !ligaDarkTheme;
    notifyListeners();
  }
}
