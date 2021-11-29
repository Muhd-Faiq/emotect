// @dart=2.9
import 'package:emotect/screens/viewmodel.dart';

import '../app/dependencies.dart';
import '../services/auth/auth_service.dart';
import '../models/user.dart';

class UserViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  User _user;

  get user => _user;
  set user(value) => _user = value;
  bool get isUserSignedIn => _user != null;

  void authenticate(User user) async => _user =
      await _service.authenticate(login: user.login, password: user.password);

  void signout() async {
    _user = null;
    await _service.signout();
  }
}
