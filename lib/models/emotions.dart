// import 'package:intl/intl.dart';

class Emotions {
  dynamic _id;
  dynamic _date;
  dynamic _emotion;
  dynamic _endtime;
  dynamic _starttime;
  dynamic _userid;
  // dynamic _surprise;
  // dynamic _fear;

  // ignore: unnecessary_getters_setters
  get id => _id;
  // ignore: unnecessary_getters_setters
  set id(value) => _id = value;

  // ignore: unnecessary_getters_setters
  get date => _date;
  set date(value) => _date = value;

  // ignore: unnecessary_getters_setters
  get emotion => _emotion;
  set emotion(value) => _emotion = value;

  // ignore: unnecessary_getters_setters
  get endtime => _endtime;
  // ignore: unnecessary_getters_setters
  set endtime(value) => _endtime = value;

  // ignore: unnecessary_getters_setters
  get starttime => _starttime;
  // ignore: unnecessary_getters_setters
  set starttime(value) => _starttime = value;

  // ignore: unnecessary_getters_setters
  get userid => _userid;
  // ignore: unnecessary_getters_setters
  set userid(value) => _userid = value;

  // ignore: unnecessary_getters_setters
  // get surprise => _surprise;
  // ignore: unnecessary_getters_setters
  // set surprise(value) => _surprise = value;

  // ignore: unnecessary_getters_setters
  // get fear => _fear;
  // ignore: unnecessary_getters_setters
  // set fear(value) => _fear = value;

  Emotions({
    dynamic id,
    dynamic date,
    dynamic emotion,
    dynamic endtime,
    dynamic starttime,
    dynamic userid,
    // dynamic surprise,
    // dynamic fear
  })  : _id = id,
        _date = date,
        _emotion = emotion,
        _endtime = endtime,
        _starttime = starttime,
        _userid = userid;
  // _surprise = surprise,
  // _fear = fear;

  Emotions.copy(Emotions from)
      : this(
            id: from.id,
            date: from.date,
            emotion: from.emotion,
            endtime: from.endtime,
            starttime: from.starttime,
            userid: from.userid);
  // surprise: from.surprise,
  // fear: from.fear);

  Emotions.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            date: json['date'],
            emotion: json['emotion'],
            endtime: json['endtime'],
            starttime: json['starttime'],
            userid: json['userid']);
  // surprise: json['surprise'],
  // fear: json['fear']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'emotion': emotion,
        'endtime': endtime,
        'starttime': starttime,
        'userid': userid
        // 'surprise': surprise,
        // 'fear': fear
      };
}
