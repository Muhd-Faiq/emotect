import '../../models/user.dart';

abstract class UserService {
  Future<User> createUserProfile({String userID, String role, String name});
}
