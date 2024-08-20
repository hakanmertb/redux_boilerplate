import 'package:njktest2/app/features/shared/sdk/lib/api.dart';

class AuthState {
  final bool isLoading;
  final String? token;
  final UserWithRelations? user;

  AuthState({required this.isLoading, this.token, this.user});

  factory AuthState.initial() =>
      AuthState(isLoading: false, token: null, user: null);

  AuthState copyWith({
    bool? isLoading,
    String? token,
    UserWithRelations? user,
  }) {
    return AuthState(
        isLoading: isLoading ?? this.isLoading,
        token: token ?? this.token,
        user: user ?? this.user);
  }
}
