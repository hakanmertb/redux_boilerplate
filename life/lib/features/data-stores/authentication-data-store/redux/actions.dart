import 'package:meta/meta.dart';

@immutable
class LoginRequest {
  final String email;
  final String password;

  const LoginRequest({
    required this.email,
    required this.password,
  });
}

@immutable
class LoginSuccess {
  final String user;

  const LoginSuccess({required this.user});
}

@immutable
class LoginFailure {
  final String error;

  const LoginFailure({required this.error});
}

@immutable
class Logout {}

@immutable
class SignUpRequest {
  final String email;
  final String password;

  const SignUpRequest({
    required this.email,
    required this.password,
  });
}
