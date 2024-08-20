import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:life/features/data-stores/app-data-store/state.dart';
import 'package:life/services/authentication_controller/controller.dart';
import 'package:one_context/one_context.dart';
import 'package:redux_epics/redux_epics.dart';
import 'actions.dart';

final AuthenticationController _authenticationController =
    AuthenticationController();
Epic<AppState> authenticationEffects = combineEpics([
  TypedEpic<AppState, LoginRequest>(_login).call,
]);

Stream<dynamic> _login(
    Stream<LoginRequest> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    try {
      yield await _authenticationController
          .login(email: action.email, password: action.password)
          .then((user) {
        OneContext().pushNamed('/user');

        return LoginSuccess(user: user);
      });
    } catch (err) {
      log(err.toString());
      yield LoginFailure(error: err.toString());
    }
  });
}
