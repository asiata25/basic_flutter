import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/auth/data/data_source/remote/auth_remote_data_source.dart';
import 'package:basic_flutter/features/auth/data/model/user_model.dart';
import 'package:basic_flutter/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<DataState<UserModel>> loginWithEmail(
      {required String username,
      required String email,
      required String password}) {
    // TODO: implement loginWithEmail
    throw UnimplementedError();
  }

  @override
  Future<DataState<UserModel>> signUpWithEmail(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final user = await authRemoteDataSource.signUpWithEmail(
          username: username, email: email, password: password);
      if (user is DataFailed) {
        throw DataFailed(Exception('Error signup user'));
      }
      return DataSuccess(user.data!);
    } on DataFailed catch (e) {
      return DataFailed(e.error!);
    }
  }
}
