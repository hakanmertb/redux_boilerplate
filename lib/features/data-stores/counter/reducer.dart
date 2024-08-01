import 'dart:developer';
import 'actions.dart';
import 'state.dart';

CounterState counterReducer(CounterState state, dynamic action) {
  if (action is IncrementByAmountAction) {
    log('reducer');
    return state.copyWith(value: state.value + action.amount);
  } else if (action is DecrementByAmountAction) {
    log('reducer');
    return state.copyWith(value: state.value - action.amount);
  }
  return state;
}
