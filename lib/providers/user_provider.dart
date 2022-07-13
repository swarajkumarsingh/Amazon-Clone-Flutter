import 'package:amazon_clone_flutter/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    name: '',
    email: '',
    password: '',
    address: '',
    type: '',
    token: '',
  );

  // Private _user can't be accessed through other classes, so we set a getter on _user and call is as user, now this can be accessed from anywhere in the application, without changing values of the
  User get user => _user;

  void setUser(String user){
    _user = User.fromJson(user);
    notifyListeners();
  }
}
