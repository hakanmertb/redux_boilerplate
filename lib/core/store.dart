import 'package:redux/redux.dart';
import 'package:redux_boilerplate/features/decrementLimit/effects.dart';
import 'package:redux_boilerplate/features/decrementLimit/reducer.dart';
import 'package:redux_boilerplate/features/incrementLimit/effects.dart';
import 'package:redux_boilerplate/features/incrementLimit/reducer.dart';
import 'package:redux_epics/redux_epics.dart';
import 'app_state.dart';
import '../features/counter/reducer.dart';
import '../features/counter/effects.dart';

Store<AppState> createStore() {
  final epics = combineEpics<AppState>(
      [counterEffects, decrementLimitEffects, incrementLimitEffects]);
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
