// @dart=2.9
import 'package:emotect/user/user_viewmodel.dart';
import 'package:emotect/services/emotionviewmodel.dart';
import '../../services/emotions/emotions_service.dart';
import '../../services/listemotionviewmodel.dart';
import '../../services/dataPieChartviewmodel.dart';

import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../../models/emotions.dart';
import '../viewmodel.dart';

class MainViewmodel extends Viewmodel {
  UserViewmodel get _userViewmodel => dependency();
  EmotionsService get _emotionservice => dependency();
  ListEmotionsViewmodel get _listemotiondependency => dependency();
  DataPieChartViewmodel get _dataPieChartdependency => dependency();
  User get user => _userViewmodel.user;
  set user(User value) => update(() async => _userViewmodel.user = value);
  void authenticate(User user) =>
      update(() async => _userViewmodel.authenticate(user));

  void signout() async {
    turnBusy();
    _userViewmodel.signout();
    turnIdle();
  }

  Map<String, double> data = new Map();
  get tdata => _dataPieChartdependency.data;
  set tdata(value) => _dataPieChartdependency.data = value;

  Future<List<Emotions>> getAllEmotions() async {
    turnBusy();
    dynamic _emo;
    if (user.role == "admin") {
      _emo = await _emotionservice.getAllEmotions();
    } else {
      _emo = await _emotionservice.getSpecificEmotions(userid: user.id);
    }
    // user.role == "admin" ? final _emo = await _emotionservice.getAllEmotions() : null
    if (_emo == null) return null;
    turnIdle();
    _listemotiondependency.listemotions = _emo;

    double numangry = 0;
    double numhappy = 0;
    double numneutral = 0;
    double numsad = 0;
    double numdisgust = 0;
    double numsurprise = 0;
    double numfear = 0;
    print(_listemotiondependency.listemotions[0].emotion);
    await _listemotiondependency.listemotions
        .forEach((value) => value.emotion.forEach((valueEmo) => {
              if (valueEmo.contains("Happy"))
                {numhappy = numhappy + 1}
              else if (valueEmo.contains("Neutral"))
                {numneutral = numneutral + 1}
              else if (valueEmo.contains("Angry"))
                {numangry = numangry + 1}
              else if (valueEmo.contains("Sad"))
                {numsad = numsad + 1}
              else if (valueEmo.contains("Disgust"))
                {numdisgust = numdisgust + 1}
              else if (valueEmo.contains("Surprise"))
                {numsurprise = numsurprise + 1}
              else if (valueEmo.contains("Fear"))
                {numfear = numfear + 1}
              else
                {print(valueEmo)}
            }));
    data.addAll({
      'Happy': numhappy,
      'Angry': numangry,
      'Sad': numsad,
      'Disgust': numdisgust,
      'Fear': numfear,
      'Neutral': numneutral
    });
    tdata = data;
    print(tdata);

    return _emo;
  }

  bool get isUserSignedIn => _userViewmodel.isUserSignedIn;
}
