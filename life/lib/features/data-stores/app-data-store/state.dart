import 'package:life/features/data-stores/authentication-data-store/redux/state.dart';

class AppState {
  final AuthenticationState authenticationState;

  AppState({
    required this.authenticationState,
  });

  factory AppState.initial() {
    return AppState(
      authenticationState: const AuthenticationState(),
    );
  }

  AppState copyWith({
    AuthenticationState? authenticationState,
  }) {
    return AppState(
      authenticationState: authenticationState ?? this.authenticationState,
    );
  }

  @override
  String toString() {
    return 'AppState{authenticationState: $authenticationState}';
  }
}
