import '../../models/user.dart';

abstract class AuthService {
  Future<User> authenticate({String login, String password});
  Future<void> signout();
  Future<User> register({User user});
}
