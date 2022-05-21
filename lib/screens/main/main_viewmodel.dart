// @dart=2.9
import 'package:emotect/user/user_viewmodel.dart';
import 'package:emotect/services/emotionviewmodel.dart';
import '../../services/emotions/emotions_service.dart';
import '../../services/listemotionviewmodel.dart';

import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../../models/emotions.dart';
import '../viewmodel.dart';

class MainViewmodel extends Viewmodel {
  UserViewmodel get _userViewmodel => dependency();
  EmotionsService get _emotionservice => dependency();
  ListEmotionsViewmodel get _listemotiondependency => dependency();
  User get user => _userViewmodel.user;
  set user(User value) => update(() async => _userViewmodel.user = value);
  void authenticate(User user) =>
      update(() async => _userViewmodel.authenticate(user));

  void signout() async {
    turnBusy();
    _userViewmodel.signout();
    turnIdle();
  }

  Future<List<Emotions>> getAllEmotions() async {
    turnBusy();
    final _emo = await _emotionservice.getAllEmotions();
    if (_emo == null) return null;
    turnIdle();
    _listemotiondependency.listemotions = _emo;
    return _emo;
  }

  bool get isUserSignedIn => _userViewmodel.isUserSignedIn;
}
