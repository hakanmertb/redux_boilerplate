import 'package:liife/app/features/shared/sdk/lib/api.dart';

class AuthState {
  final bool isLoading;
  final String? token;
  final User? user;

  AuthState({required this.isLoading, this.token, required this.user});

  factory AuthState.initial() =>
      AuthState(isLoading: false, token: null, user: null);

  AuthState copyWith({
    bool? isLoading,
    String? token,
    User? user,
  }) {
    return AuthState(
        isLoading: isLoading ?? this.isLoading,
        token: token ?? this.token,
        user: user ?? this.user);
  }
}
