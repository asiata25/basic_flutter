import 'package:basic_flutter/core/resources/data_state.dart';
import 'package:basic_flutter/features/auth/domain/usecases/user_signup.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_event.dart';
import 'package:basic_flutter/features/auth/presentation/bloc/remote/remote_auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteAuthBloc extends Bloc<RemoteAuthEvent, RemoteAuthState> {
  final UserSignup _userSignup;
  RemoteAuthBloc({required UserSignup userSignup})
      : _userSignup = userSignup,
        super(AuthStateLoading()) {
    on<AuthSignUp>(
      (event, emit) async {
        final response = await _userSignup(
            params: UserSignupParams(
                username: event.username,
                email: event.email,
                password: event.password));

        if (response is DataSuccess && response.data != null) {
          emit(AuthStateDone(response.data!));
        }

        if (response is DataFailed) {
          emit(AuthStateError(response.error.toString()));
        }
      },
    );
  }
}
