import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class OnboardingSelectionsProvider extends ChangeNotifier {
  String _username = "";

  void setUserName(String name) {
    _username = name;
    notifyListeners();
  }

  String get username => _username;
}
