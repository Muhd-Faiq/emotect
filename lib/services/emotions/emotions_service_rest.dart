import '../../app/dependencies.dart';
import '../../models/emotions.dart';
import '../rest.dart';
import 'emotions_service.dart';

class EmotionsServiceRest implements EmotionsService {
  RestService get rest => dependency();

  Future<List<Emotions>?> getAllEmotions() async {
    String temp = 'emotions';
    final List json = await rest.get(temp);
    if (json == null || json.length == 0) return null;
    final _emotions = json.map((e) => Emotions.fromJson(e)).toList();
    return _emotions;
  }

  Future<List<Emotions>?> getSpecificEmotions({String userid = ""}) async {
    String temp = 'emotions?userid=$userid';
    print(temp);
    final List json = await rest.get(temp);
    if (json == null || json.length == 0) return null;
    final _emotions = json.map((e) => Emotions.fromJson(e)).toList();
    return _emotions;
  }
}
