import 'package:basic_flutter/core/common/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    super.user,
    super.session,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        session:
            json["session"] == null ? null : Session.fromJson(json["session"]),
      );
}
