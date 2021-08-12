// @dart=2.9
import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../rest.dart';
import 'user_service.dart';

class UserServiceRest implements UserService {
  RestService get rest => dependency();

  @override
  Future<User> createUserProfile(
      {String userID, String role, String name}) async {
    try {
      final json =
          await rest.post('users/$userID', data: {'name': name, 'role': role});

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
}
