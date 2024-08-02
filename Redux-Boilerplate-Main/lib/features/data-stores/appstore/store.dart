import 'package:redux/redux.dart';
import 'package:redux_boilerplate/features/data-stores/decrementLimit/effects.dart';
import 'package:redux_boilerplate/features/data-stores/decrementLimit/reducer.dart';
import 'package:redux_boilerplate/features/data-stores/incrementLimit/effects.dart';
import 'package:redux_boilerplate/features/data-stores/incrementLimit/reducer.dart';
import 'package:redux_epics/redux_epics.dart';
import 'state.dart';
import '../counter/reducer.dart';
import '../counter/effects.dart';

Store<AppState> createStore() {
  final epics = combineEpics<AppState>([
    counterEffects,
    decrementLimitEffects,
    incrementLimitEffects,
    initAppEffects
  ]);
  final epicMiddleware = EpicMiddleware(epics);

  return Store<AppState>(
    (state, action) => AppState(
        counterState: counterReducer(state.counterState, action),
        incrementLimitState:
            incrementLimitReducer(state.incrementLimitState, action),
        decrementLimitState:
            decrementLimitReducer(state.decrementLimitState, action)),
    initialState: AppState.initial(),
    middleware: [epicMiddleware.call],
  );
}
