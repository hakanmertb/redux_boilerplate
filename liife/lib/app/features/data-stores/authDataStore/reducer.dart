import 'actions.dart';
import 'state.dart';

AuthState authReducer(AuthState state, dynamic action) {
  if (action is GetTokenByOauth) {
    return state.copyWith(isLoading: true);
  }
/////////////////////////////////
  else if (action is GetTokenByOauthFailure) {
    return state.copyWith(isLoading: false);
  }
  /////////////////////////////////
  else if (action is LoginOrRegisterByDescopeRefreshTokenFailure) {
    return state.copyWith(
      isLoading: false,
    );
  }
  /////////////////////////////////
  else if (action is LoginOrRegisterByDescopeRefreshTokenSuccessful) {
    return state.copyWith(isLoading: false, token: action.payload.rapiderToken);
  }
  /////////////////////////////////
  else if (action is GetTokenByCredentials) {
    return state.copyWith(isLoading: true);
  }
  /////////////////////////////////
  else if (action is GetTokenByCredentialsSuccessful) {
    return state.copyWith(
      isLoading: false,
      token: action.payload.token,
    );
  }
  /////////////////////////////////
  else if (action is GetTokenByCredentialsFailure) {
    return state.copyWith(isLoading: false);
  }
  /////////////////////////////////
  else if (action is LoginByToken) {
    return state.copyWith(isLoading: true);
  }
  /////////////////////////////////
  else if (action is LoggedIn) {
    return state.copyWith(isLoading: false, user: action.payload.user);
  }
  /////////////////////////////////
  else if (action is LoginByTokenFailure) {
    return state.copyWith(isLoading: false);
  }
  /////////////////////////////////
  else if (action is Register) {
    return state.copyWith(isLoading: true);
  }
  /////////////////////////////////
  else if (action is RegisterSuccessful) {
    return state.copyWith(
      isLoading: false,
      token: action.payload.token,
    );
  }
  /////////////////////////////////
  else if (action is RegisterFailure) {
    return state.copyWith(isLoading: false);
  }
  /////////////////////////////////
  else if (action is SetUser) {
    return state.copyWith(user: action.payload.user);
  }
  /////////////////////////////////
  else if (action is SetToken) {
    return state.copyWith(token: action.payload.token);
  }
  /////////////////////////////////
  else if (action is ClearToken) {
    return state.copyWith(token: null);
  }
  /////////////////////////////////
  else if (action is Logout) {
    return AuthState.initial();
  }

  return state;
}
