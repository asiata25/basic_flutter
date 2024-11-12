import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/auth/data/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<DataState<UserModel>> signUpWithEmail({
    required String username,
    required String email,
    required String password,
  });
  Future<DataState<UserModel>> loginWithEmail({
    required String email,
    required String password,
  });
}

class SupabaseDataSourceImpl extends AuthRemoteDataSource {
  final SupabaseClient _supabaseClient;
  SupabaseDataSourceImpl(this._supabaseClient);

  @override
  Future<DataState<UserModel>> loginWithEmail(
      {required String email, required String password}) {
    // TODO: implement loginWithEmail
    throw UnimplementedError();
  }

  @override
  Future<DataState<UserModel>> signUpWithEmail(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final response = await _supabaseClient.auth.signUp(
          email: email, password: password, data: {"username": username});

      if (response.user == null) {
        throw DataFailed(Exception('Failed to get user data from supabase'));
      }

      return DataSuccess(UserModel.fromJson(response.user!.toJson()));
    } on DataFailed catch (e) {
      return DataFailed(e.error!);
    }
  }
}
