import 'dart:developer';
import 'package:liife/app/features/auth/auth_webview.dart';
import 'package:liife/app/features/auth/services/token-service/token-service.dart';

import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:liife/app/features/data-stores/routerDataStore/actions.dart';
import 'package:liife/app/features/shared/sdk/lib/api.dart';
import 'package:liife/definitons/settings.dart';
import 'package:liife/environments/environment.dev.dart';
import 'package:one_context/one_context.dart';
import 'package:redux_epics/redux_epics.dart';
import 'actions.dart';

AuthControllerApi api() {
  return AuthControllerApi();
}

Epic<AppDataStoreState> authDataStoreEffects = combineEpics([
  TypedEpic<AppDataStoreState, Register>(_register).call,
  TypedEpic<AppDataStoreState, RegisterSuccessful>(_registerSuccessful).call,
  TypedEpic<AppDataStoreState, GetTokenByOauth>(_getTokenByOauth).call,
  TypedEpic<AppDataStoreState, GetTokenByOauthSuccessful>(
          _getTokenByOauthSuccessful)
      .call,
  TypedEpic<AppDataStoreState, GetTokenByCredentials>(_getTokenByCredentials)
      .call,
  TypedEpic<AppDataStoreState, GetTokenByCredentialsSuccessful>(
          _getTokenByCredentialsSuccessful)
      .call,
  TypedEpic<AppDataStoreState, LoginByToken>(_loginByToken).call,
  TypedEpic<AppDataStoreState, LoginByTokenFailure>(_loginByTokenFailure).call,
  TypedEpic<AppDataStoreState, SetToken>(_setToken).call,
  TypedEpic<AppDataStoreState, ClearToken>(_clearToken).call,
  TypedEpic<AppDataStoreState, LoggedIn>(_loggedIn).call,
  TypedEpic<AppDataStoreState, Logout>(_logout).call,
  TypedEpic<AppDataStoreState, NavigateToLoginPage>(_navigateToLoginPage).call,
  TypedEpic<AppDataStoreState, NavigateToRegisterPage>(_navigateToRegisterPage)
      .call,
  TypedEpic<AppDataStoreState, GetTokenByOauthFailure>(_getTokenByOauthFailure)
      .call,
  TypedEpic<AppDataStoreState, LoginOrRegisterByDescopeRefreshToken>(
          _loginOrRegisterByDescopeRefreshToken)
      .call,
  TypedEpic<AppDataStoreState, LoginOrRegisterByDescopeRefreshTokenSuccessful>(
          _loginOrRegisterByDescopeRefreshTokenSuccessful)
      .call
]);

Stream<dynamic> _register(
    Stream<Register> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      final registerDTO = RegisterDTO.fromJson(
          {...action.payload.user, "usernameType": Settings.userNameType});

      final response =
          await api().authControllerRegister(registerDTO: registerDTO);

      yield RegisterSuccessful({
        'token': response!.token,
        'redirectUrl': action.payload.redirectUrl ?? '/',
      });
    } catch (err) {
      log(err.toString());

      yield RegisterFailure();
    }
  });
}

Stream<dynamic> _registerSuccessful(
    Stream<RegisterSuccessful> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield SetToken({'token': action.payload.token});
    yield LoginByToken({
      'token': action.payload.token,
      'redirectUrl': action.payload.redirectUrl,
    });
  });
}

Stream<dynamic> _getTokenByCredentials(
    Stream<GetTokenByCredentials> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      final credentials = Credentials.fromJson(<String, dynamic>{
        ...action.payload.credentials,
        'usernameType': Settings.userNameType,
      });
      if (credentials != null) {
        final response = await api().authControllerLogin(credentials);
        yield GetTokenByCredentialsSuccessful({
          'token': response!.token,
          'redirectUrl': action.payload.redirectUrl,
        });
      } else {
        yield GetTokenByCredentialsFailure();
      }
    } catch (err) {
      log(err.toString());
      yield GetTokenByCredentialsFailure();
    }
  });
}

Stream<dynamic> _getTokenByOauth(
    Stream<GetTokenByOauth> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      var response = await performOAuthFlow(
          OneContext().context!, action.payload.provider);

      yield GetTokenByOauthSuccessful({
        'authorizationTokenResponse': response!,
        'redirectUrl': action.payload.redirectUrl,
      });
    } catch (err) {
      log(err.toString());
      yield GetTokenByOauthFailure();
    }
  });
}

Stream<dynamic> _getTokenByOauthSuccessful(
    Stream<GetTokenByOauthSuccessful> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield LoginOrRegisterByDescopeRefreshToken({
      "refreshToken": action.payload.authorizationTokenResponse.refreshToken
    });
  });
}

Stream<dynamic> _loginOrRegisterByDescopeRefreshToken(
    Stream<LoginOrRegisterByDescopeRefreshToken> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      var response = await api()
          .authControllerLoginOrRegisterByDescopeRefreshToken(
              action.payload.refreshToken);

      yield LoginOrRegisterByDescopeRefreshTokenSuccessful({
        'rapiderToken': response!.token,
        'redirectUrl': action.payload.redirectUrl
      });
    } catch (err) {
      log(err.toString());
      yield LoginOrRegisterByDescopeRefreshTokenFailure();
    }
  });
}

Stream<dynamic> _loginOrRegisterByDescopeRefreshTokenSuccessful(
    Stream<LoginOrRegisterByDescopeRefreshTokenSuccessful> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield SetToken({'token': action.payload.rapiderToken});
    yield LoginByToken({
      'token': action.payload.rapiderToken,
      'redirectUrl': action.payload.redirectUrl,
    });
  });
}

Stream<dynamic> _getTokenByOauthFailure(Stream<GetTokenByOauthFailure> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Navigate({'path': '/'});
  });
}

Stream<dynamic> _getTokenByCredentialsSuccessful(
    Stream<GetTokenByCredentialsSuccessful> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield SetToken({'token': action.payload.token});
    yield LoginByToken({
      'token': action.payload.token,
      'redirectUrl': action.payload.redirectUrl,
    });
  });
}

Stream<dynamic> _loginByToken(
    Stream<LoginByToken> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      defaultApiClient = ApiClient(
        basePath: DevEnvironment.apiBaseUrl,
        authentication: HttpBearerAuth()..accessToken = action.payload.token,
      );
      final user = await api().authControllerGetUserByToken();
      yield LoggedIn(payload: {
        'token': action.payload.token,
        'user': user,
        'redirectUrl': action.payload.redirectUrl,
      });
    } catch (err) {
      log('burda');
      log(err.toString());
      yield LoginByTokenFailure();
    }
  });
}

Stream<dynamic> _loginByTokenFailure(
    Stream<LoginByTokenFailure> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Logout();
  });
}

Stream<dynamic> _setToken(
    Stream<SetToken> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    defaultApiClient = ApiClient(
      basePath: DevEnvironment.apiBaseUrl,
      authentication: HttpBearerAuth()..accessToken = action.payload.token,
    );
    await TokenService.instance.setToken(action.payload.token);
  });
}

Stream<dynamic> _clearToken(
    Stream<ClearToken> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((_) async* {
    await TokenService.instance.clearToken();
  });
}

Stream<dynamic> _loggedIn(
    Stream<LoggedIn> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    log("'user':${action.payload.user}");
    yield SetUser({'user': action.payload.user});
    if (action.payload.redirectUrl != null) {
      log("other");
      yield Navigate({'path': action.payload.redirectUrl});
    } else {
      log("home");
      yield Navigate({'path': '/home'});
    }
  });
}

Stream<dynamic> _logout(
    Stream<Logout> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((_) async* {
    yield ClearToken();
    yield SetUser({'user': null});
    yield Navigate({'path': '/'});
  });
}

Stream<dynamic> _navigateToLoginPage(
    Stream<NavigateToLoginPage> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Navigate({'path': '/'});
  });
}

Stream<dynamic> _navigateToRegisterPage(Stream<NavigateToRegisterPage> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Navigate({'path': '/'});
  });
}
