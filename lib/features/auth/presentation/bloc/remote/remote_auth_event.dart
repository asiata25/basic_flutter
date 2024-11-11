import 'package:flutter/material.dart';

@immutable
sealed class RemoteAuthEvent {}

class AuthSignUp extends RemoteAuthEvent {
  final String email;
  final String password;
  final String username;

  AuthSignUp(
      {required this.email, required this.password, required this.username});
}
