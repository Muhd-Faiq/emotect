import '../../models/emotions.dart';

abstract class EmotionsService {
  Future<List<Emotions>?> getAllEmotions();
  Future<List<Emotions>?> getSpecificEmotions({String userid});
}
