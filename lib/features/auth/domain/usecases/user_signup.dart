import 'package:basic_flutter/core/common/entities/user_entity.dart';
import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/core/usecases/usecase.dart';
import 'package:basic_flutter/features/auth/domain/repository/auth_repository.dart';

class UserSignup implements UseCase<DataState<UserEntity>, UserSignupParams> {
  final AuthRepository authRepository;
  UserSignup(this.authRepository);

  @override
  Future<DataState<UserEntity>> call({UserSignupParams? params}) async {
    return await authRepository.signUpWithEmail(
        username: params?.username ?? "",
        email: params?.email ?? "",
        password: params?.password ?? "");
  }
}

class UserSignupParams {
  final String username;
  final String email;
  final String password;

  UserSignupParams(
      {required this.username, required this.email, required this.password});
}
