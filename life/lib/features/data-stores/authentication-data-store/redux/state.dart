import 'package:meta/meta.dart';

@immutable
class AuthenticationState {
  final bool isLoading;
  final String? user;
  final String? errorMessage;

  const AuthenticationState({
    this.isLoading = false,
    this.user,
    this.errorMessage,
  });

  AuthenticationState copyWith({
    bool? isLoading,
    String? user,
    String? errorMessage,
  }) {
    return AuthenticationState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    return 'AuthenticationState{isLoading: $isLoading, user: $user, errorMessage: $errorMessage}';
  }
}
