import 'package:basic_flutter/core/common/entities/user.dart';
import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/core/usecases/usecase.dart';
import 'package:basic_flutter/features/auth/domain/repository/auth_repository.dart';

class UserSignup implements UseCase<DataState<User>, UserSignupParams> {
  final AuthRepository authRepository;
  UserSignup(this.authRepository);

  @override
  Future<DataState<User>> call({UserSignupParams? params}) async {
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
