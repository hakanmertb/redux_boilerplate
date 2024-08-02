import 'dart:developer';
import 'actions.dart';
import 'state.dart';

DecrementLimitState decrementLimitReducer(
    DecrementLimitState state, dynamic action) {
  if (action is DecrementLimitIncrementAction) {
    log('DecrementLimit reducer');
    return state.copyWith(decrementLimit: state.decrementLimit + 1);
  } else if (action is DecrementLimitDecrementAction) {
    log('DecrementLimit reducer');
    return state.copyWith(decrementLimit: state.decrementLimit - 1);
  }
  return state;
}
