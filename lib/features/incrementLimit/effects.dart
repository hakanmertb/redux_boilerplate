import 'dart:developer';
import 'package:redux_boilerplate/features/incrementLimit/actions.dart';
import 'package:redux_epics/redux_epics.dart';
import '../../core/app_state.dart';

Epic<AppState> incrementLimitEffects = combineEpics([
  TypedEpic<AppState, IncrementLimitIncrementAction>(_incrementEffect).call,
  TypedEpic<AppState, IncrementLimitDecrementAction>(_decrementEffect).call,
]);

Stream<dynamic> _incrementEffect(
    Stream<IncrementLimitIncrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    log("IncrementLimit Increment Effect triggered"); // Log eklendig eklendi
    yield IncrementLimitIncrementAction;
  });
}

Stream<dynamic> _decrementEffect(
    Stream<IncrementLimitDecrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    log("IncrementLimit Decrement Effect triggered"); // Log eklendi
    yield IncrementLimitDecrementAction;
  });
}
