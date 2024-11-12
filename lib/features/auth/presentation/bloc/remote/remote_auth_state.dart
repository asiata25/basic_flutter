import 'package:basic_flutter/core/common/entities/user_entity.dart';
import 'package:flutter/material.dart';

@immutable
sealed class RemoteAuthState {
  const RemoteAuthState();
}

class AuthStateLoading extends RemoteAuthState {}

class AuthStateDone extends RemoteAuthState {
  final UserEntity user;
  const AuthStateDone(this.user);
}

class AuthStateError extends RemoteAuthState {
  final String message;
  const AuthStateError(this.message);
}
