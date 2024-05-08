import 'package:flutter/material.dart';
import 'package:provider_simple_example/model.dart';

class UserProvider with ChangeNotifier {
  User _user = User(name: 'Husan', age: 20);

  User get user => _user;

  void updateUser(String nameIncoming, int ageIncoming) {
    _user = User(name: nameIncoming, age: ageIncoming);
    notifyListeners();
  }
}
