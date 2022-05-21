// @dart=2.9
class Session {
  String token;
  get ttoken => token;
  set ttoken(value) => token = value;

  Session({this.token});
  Session.fromJson(Map<String, dynamic> json) : this(token: json['token']);
  Map<String, dynamic> toJson() => {'token': token};
}
