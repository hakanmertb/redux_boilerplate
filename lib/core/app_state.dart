import 'package:redux_boilerplate/features/decrementLimit/state.dart';
import 'package:redux_boilerplate/features/incrementLimit/state.dart';

import '../features/counter/state.dart';

class AppState {
  final CounterState counterState;
  final IncrementLimitState incrementLimitState;
  final DecrementLimitState decrementLimitState;

  AppState(
      {required this.incrementLimitState,
      required this.decrementLimitState,
      required this.counterState});

  factory AppState.initial() => AppState(
        incrementLimitState: IncrementLimitState.initial(),
        decrementLimitState: DecrementLimitState.initial(),
        counterState: CounterState.initial(),
      );

  AppState copyWith(
      {CounterState? counterState,
      IncrementLimitState? incrementLimitState,
      DecrementLimitState? decrementLimitState}) {
    return AppState(
      counterState: counterState ?? this.counterState,
      incrementLimitState: incrementLimitState ?? this.incrementLimitState,
      decrementLimitState: decrementLimitState ?? this.decrementLimitState,
    );
  }
}