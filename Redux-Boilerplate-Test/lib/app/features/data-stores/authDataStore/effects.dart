import 'dart:developer';
import 'package:njktest2/app/features/auth/services/auth-service/auth-provider-config.dart';
import 'package:njktest2/app/features/auth/services/token-service/secure-storage-management-service.dart';
import 'package:njktest2/app/features/auth/services/token-service/token-service.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/routerDataStore/actions.dart';
import 'package:njktest2/app/features/shared/sdk/lib/api.dart';
import 'package:njktest2/app/routes.dart';
import 'package:njktest2/definitons/settings.dart';
import 'package:njktest2/environments/environment.dev.dart';
import 'package:redux_epics/redux_epics.dart';
import 'actions.dart';

final AuthControllerApi api = AuthControllerApi();
final TokenService tokenService =
    TokenService(SecureStorageManagementService());

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
]);

Stream<dynamic> _register(
    Stream<Register> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      final registerDTO = RegisterDTO.fromJson(
          {...action.payload.user, "usernameType": Settings.userNameType});

      final response =
          await api.authControllerRegister(registerDTO: registerDTO);

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
        final response = await api.authControllerLogin(credentials);
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
      var response =
          await AuthProvidersConfig.authorize(action.payload.provider);

      if (response != null) {
        log("idtoken:" + response.idToken!);
        yield GetTokenByOauthSuccessful({
          'authorizationTokenResponse': response,
          'redirectUrl': action.payload.redirectUrl,
        });
      } else {
        yield GetTokenByOauthFailure();
      }
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
    yield LoggedIn(payload: {
      'user': User(
        id: "id",
        username: "username",
        password: "password",
        email: "email",
        createdDate: DateTime.now(),
        createdBy: "createdBy",
        createdById: "createdById",
        isDeleted: false,
      ).toJson()
    });
    yield SetToken(
        {'token': action.payload.authorizationTokenResponse.accessToken});
    /*yield LoginByToken({
      'token': action.payload.authorizationTokenResponse.accessToken,
      'redirectUrl': action.payload.redirectUrl,
    });*/
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
      final user = await api.authControllerGetUserByToken();
      yield LoggedIn(payload: {
        'token': action.payload.token,
        'user': user,
        'redirectUrl': action.payload.redirectUrl,
      });
    } catch (err) {
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
    await tokenService.setToken(action.payload.token);
  });
}

Stream<dynamic> _clearToken(
    Stream<ClearToken> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((_) async* {
    await tokenService.clearToken();
  });
}

Stream<dynamic> _loggedIn(
    Stream<LoggedIn> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield SetUser({'user': action.payload.user});
    if (action.payload.redirectUrl != null) {
      yield Navigate({'path': action.payload.redirectUrl});
    } else {
      yield Navigate({'path': AppRoutes.home});
    }
  });
}

Stream<dynamic> _logout(
    Stream<Logout> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((_) async* {
    yield ClearToken();
    yield SetUser({'user': null});
    yield Navigate({'path': '/auth/login'});
  });
}

Stream<dynamic> _navigateToLoginPage(
    Stream<NavigateToLoginPage> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Navigate({'path': '/auth/login'});
  });
}

Stream<dynamic> _navigateToRegisterPage(Stream<NavigateToRegisterPage> actions,
    EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    yield Navigate({'path': '/auth/register'});
  });
}
