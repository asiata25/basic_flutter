import 'package:basic_flutter/core/common/entities/user_entity.dart';
import 'package:basic_flutter/core/resources/data_state.dart';

abstract class AuthRepository {
  Future<DataState<UserEntity>> signUpWithEmail({
    required String username,
    required String email,
    required String password,
  });
  Future<DataState<UserEntity>> loginWithEmail({
    required String username,
    required String email,
    required String password,
  });
}
