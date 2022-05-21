import '../../models/emotions.dart';

class ListEmotionsViewmodel {
  late List<Emotions> _listemotions;

  get listemotions => _listemotions;
  set listemotions(value) => _listemotions = value;
}
