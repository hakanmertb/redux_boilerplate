import 'dart:developer';

import 'package:redux_boilerplate/features/data-stores/decrementLimit/actions.dart';
import 'package:redux_epics/redux_epics.dart';
import '../appstore/state.dart';

Epic<AppState> decrementLimitEffects = combineEpics([
  TypedEpic<AppState, DecrementLimitIncrementAction>(_incrementEffect).call,
  TypedEpic<AppState, DecrementLimitDecrementAction>(_decrementEffect).call,
]);

Stream<dynamic> _incrementEffect(
    Stream<DecrementLimitIncrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    log("DecrementLimit Increment Effect triggered"); // Log eklendig eklendi
    yield DecrementLimitIncrementAction;
  });
}

Stream<dynamic> _decrementEffect(
    Stream<DecrementLimitDecrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    log("DecrementLimit Decrement Effect triggered"); // Log eklendi
    yield DecrementLimitDecrementAction;
  });
}
