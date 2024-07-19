import 'dart:developer';

import 'package:redux_boilerplate/features/counter/selectors.dart';
import 'package:redux_boilerplate/features/decrementLimit/selectors.dart';
import 'package:redux_boilerplate/features/incrementLimit/selectors.dart';
import 'package:redux_epics/redux_epics.dart';
import '../../core/app_state.dart';
import '../../services/api.dart';
import 'actions.dart';

Epic<AppState> counterEffects = combineEpics([
  TypedEpic<AppState, IncrementAction>(_incrementEffect).call,
  TypedEpic<AppState, DecrementAction>(_decrementEffect).call,
]);

Stream<dynamic> _incrementEffect(
    Stream<IncrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    int incrementlimit =
        incrementLimitSelector(store.state.incrementLimitState);
    int currentValue = currentCounterValueSelector(store.state.counterState);
    if (currentValue >= incrementlimit) {
      log("Increment Effect triggered"); // L
      log("Increment amount: 0 IncrementLimit Reached"); // Log eklendi
      yield IncrementDeniedAction();
    } else {
      log("Increment Effect triggered"); // Log eklendi
      int incrementAmount = await fetchIncrementAmount();
      log("Increment amount: $incrementAmount"); // Log eklendi
      yield IncrementByAmountAction(amount: incrementAmount);
    }
  });
}

Stream<dynamic> _decrementEffect(
    Stream<DecrementAction> actions, EpicStore<AppState> store) {
  return actions.asyncExpand((action) async* {
    int decrementlimit =
        decrementLimitSelector(store.state.decrementLimitState);
    int currentValue = currentCounterValueSelector(store.state.counterState);
    if (currentValue <= decrementlimit) {
      log("Decrement Effect triggered"); // L
      log("Decrement amount: 0 DecrementLimit Reached"); // Log eklendi
      yield DecrementDeniedAction();
    } else {
      log("Decrement Effect triggered"); // Log eklendi
      int decrementAmount = await fetchDecrementAmount();
      log("Decrement amount: $decrementAmount"); // Log eklendi
      yield DecrementByAmountAction(amount: decrementAmount);
    }
  });
}
