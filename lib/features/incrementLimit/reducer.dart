import 'dart:developer';
import 'actions.dart';
import 'state.dart';

IncrementLimitState incrementLimitReducer(
    IncrementLimitState state, dynamic action) {
  if (action is IncrementLimitIncrementAction) {
    log('IncrementLimit reducer');
    return state.copyWith(incrementLimit: state.incrementLimit + 1);
  } else if (action is IncrementLimitDecrementAction) {
    log('IncrementLimit reducer');
    return state.copyWith(incrementLimit: state.incrementLimit - 1);
  }
  return state;
}
