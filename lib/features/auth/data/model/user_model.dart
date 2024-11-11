
import 'package:basic_flutter/core/common/entities/user.dart';

class UserModel extends User{
  UserModel(
      {required super.username,
      required super.email,
      required super.birthDate,
      required super.address});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      username: json['username'] ?? "",
      email: json['email'] ?? "",
      birthDate: DateTime.parse(json['birthDate'] ?? "2012-02-27"),
      address: json['address'] ?? "");
}
