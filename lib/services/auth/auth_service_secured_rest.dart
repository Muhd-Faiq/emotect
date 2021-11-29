// @dart=2.9
import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../rest.dart';
import 'auth_service.dart';

class AuthServiceSecuredRest implements AuthService {
  RestService get rest => dependency();
  @override
  Future<User> authenticate({String login, String password}) async {
    try {
      print('login==$login');
      print('password==$password');
      final json = await rest
          .post('auths/signin', data: {'email': login, 'password': password});

      if (json == null) return null;

      // Pre-process json data to comply with the field of the User model
      json['id'] = json['localId'];
      json['name'] = json['displayName'];
      json['photoUrl'] = json['profilePicture'];

      // Get the access token and let the rest object stores that
      rest.openSession(json['idToken']);

      final _user = User.fromJson(json);
      return _user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User> register({User user}) async {
    print(user.name);
    final json = await rest.post('auths/signup', data: {
      'email': user.login,
      'password': user.password,
      'displayName': user.name
    });
    if (json == null || json.length == 0) return null;

    json['id'] = json['localId'];
    json['name'] = json['displayName'];
    json['photoUrl'] = json['profilePicture'];
    rest.openSession(json['idToken']);
    final _user = User.fromJson(json);
    return _user;
  }

  @override
  Future<void> signout() async => rest.closeSession();
}
