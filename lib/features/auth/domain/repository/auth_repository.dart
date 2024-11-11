import 'package:basic_flutter/core/common/entities/user.dart';
import 'package:basic_flutter/core/resources/data_state.dart';

abstract class AuthRepository {
  Future<DataState<User>> signUpWithEmail({
    required String username,
    required String email,
    required String password,
  });
  Future<DataState<User>> loginWithEmail({
    required String username,
    required String email,
    required String password,
  });
}
