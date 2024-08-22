import 'package:liife/app/features/shared/models/event/authDataStore/GetTokenByCredentialsActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/GetTokenByCredentialsSuccessfulActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/GetTokenByOauth.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/GetTokenByOauthSuccessfulActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/LoggedInActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/LoginByTokenActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/LoginOrRegisterByDescopeRefreshTokenActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/LoginOrRegisterByDescopeRefreshTokenSuccessfulActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/RegisterActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/RegisterSuccessfulActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/SetTokenActionPayload.dart';
import 'package:liife/app/features/shared/models/event/authDataStore/SetUserActionPayload.dart';

///////////////
class GetTokenByOauth {
  final GetTokenByOauthActionPayload payload;
  GetTokenByOauth(Map<String, dynamic> payload)
      : payload = GetTokenByOauthActionPayload(payload);
}

class GetTokenByOauthSuccessful {
  final GetTokenByOauthSuccessfulActionPayload payload;
  GetTokenByOauthSuccessful(Map<String, dynamic> payload)
      : payload = GetTokenByOauthSuccessfulActionPayload(payload);
}

class GetTokenByOauthFailure {
  GetTokenByOauthFailure();
}

///////////////
class LoginOrRegisterByDescopeRefreshToken {
  final LoginOrRegisterByDescopeRefreshTokenActionPayload payload;
  LoginOrRegisterByDescopeRefreshToken(Map<String, dynamic> payload)
      : payload = LoginOrRegisterByDescopeRefreshTokenActionPayload(payload);
}

class LoginOrRegisterByDescopeRefreshTokenSuccessful {
  final LoginOrRegisterByDescopeRefreshTokenSuccessfulActionPayload payload;
  LoginOrRegisterByDescopeRefreshTokenSuccessful(Map<String, dynamic> payload)
      : payload = LoginOrRegisterByDescopeRefreshTokenSuccessfulActionPayload(
            payload);
}

class LoginOrRegisterByDescopeRefreshTokenFailure {
  LoginOrRegisterByDescopeRefreshTokenFailure();
}

///////////////

class GetTokenByCredentials {
  final GetTokenByCredentialsActionPayload payload;
  GetTokenByCredentials(Map<String, dynamic> payload)
      : payload = GetTokenByCredentialsActionPayload(payload);
}

class GetTokenByCredentialsSuccessful {
  final GetTokenByCredentialsSuccessfulActionPayload payload;
  GetTokenByCredentialsSuccessful(Map<String, dynamic> payload)
      : payload = GetTokenByCredentialsSuccessfulActionPayload(payload);
}

class GetTokenByCredentialsFailure {
  GetTokenByCredentialsFailure();
}

class Logout {
  Logout();
}

class LoginByToken {
  final LoginByTokenActionPayload payload;
  LoginByToken(Map<String, dynamic> payload)
      : payload = LoginByTokenActionPayload(payload);
}

class LoggedIn {
  final LoggedInActionPayload payload;
  LoggedIn({required Map<String, dynamic> payload})
      : payload = LoggedInActionPayload(payload);
}

class LoginByTokenFailure {
  LoginByTokenFailure();
}

class Register {
  final RegisterActionPayload payload;
  Register(Map<String, dynamic> payload)
      : payload = RegisterActionPayload(payload);
}

class RegisterSuccessful {
  final RegisterSuccessfulActionPayload payload;
  RegisterSuccessful(Map<String, dynamic> payload)
      : payload = RegisterSuccessfulActionPayload(payload);
}

class RegisterFailure {
  RegisterFailure();
}

class SetUser {
  final SetUserActionPayload payload;
  SetUser(Map<String, dynamic> payload)
      : payload = SetUserActionPayload(payload);
}

class SetToken {
  final SetTokenActionPayload payload;
  SetToken(Map<String, dynamic> payload)
      : payload = SetTokenActionPayload(payload);
}

class ClearToken {
  ClearToken();
}

class NavigateToLoginPage {
  NavigateToLoginPage();
}

class NavigateToRegisterPage {
  NavigateToRegisterPage();
}
