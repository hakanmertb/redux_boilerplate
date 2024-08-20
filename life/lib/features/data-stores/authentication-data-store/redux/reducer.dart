import 'actions.dart';
import 'state.dart';

AuthenticationState authenticationReducer(
    AuthenticationState state, dynamic action) {
  if (action is LoginRequest) {
    return state.copyWith(
      isLoading: true,
      errorMessage: null,
    );
  } else if (action is LoginSuccess) {
    return state.copyWith(
      isLoading: false,
      user: action.user,
      errorMessage: null,
    );
  } else if (action is LoginFailure) {
    return state.copyWith(
      isLoading: false,
      errorMessage: action.error,
    );
  } else if (action is Logout) {
    return state.copyWith(
      user: null,
      errorMessage: null,
    );
  }
  return state;
}
