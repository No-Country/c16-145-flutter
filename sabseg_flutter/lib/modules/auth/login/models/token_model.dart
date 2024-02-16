import 'dart:convert';

class TokenModel {
  String token;

  TokenModel({
    required this.token,
  });

  factory TokenModel.fromRawJson(String str) =>
      TokenModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
