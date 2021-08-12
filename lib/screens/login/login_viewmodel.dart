// @dart=2.9
import '../../app/dependencies.dart';
import '../../services/auth/auth_service.dart';
import '../../models/user.dart';
import '../viewmodel.dart';
// import '../../services/userviewmodel.dart';

class LoginViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  // UserViewmodel get _userdependency => dependency();
  User _user = User();
  bool _showPassword = false;
  bool _showErrorMessage = false;
  String login;
  String passwordtemp;

  get user => _user;
  set user(value) => _user = value;

  get showPassword => _showPassword;
  set showPassword(value) {
    turnBusy();
    _showPassword = value;
    turnIdle();
  }

  get showErrorMessage => _showErrorMessage;
  set showErrorMessage(value) {
    turnBusy();
    _showErrorMessage = value;
    turnIdle();
  }

  get username => login;
  set username(value) {
    turnBusy();
    _showErrorMessage = false;
    login = value;
    turnIdle();
  }

  get password => passwordtemp;
  set password(value) {
    turnBusy();
    _showErrorMessage = false;
    passwordtemp = value;
    turnIdle();
  }

  Future<User> authenticate() async {
    turnBusy();
    final User _user =
        await _service.authenticate(login: username, password: password);
    if (_user == null) _showErrorMessage = true;
    turnIdle();
    // _userdependency.user = _user;
    return _user;
  }
}
