import 'package:life/features/data-stores/authentication-data-store/redux/effects.dart';
import 'package:life/features/data-stores/authentication-data-store/redux/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'state.dart';

Store<AppState> createStore() {
  final epics = combineEpics<AppState>([authenticationEffects]);
  final epicMiddleware = EpicMiddleware(epics);
  return Store<AppState>(
    (state, action) => AppState(
        authenticationState:
            authenticationReducer(state.authenticationState, action)),
    initialState: AppState.initial(),
    middleware: [epicMiddleware.call],
  );
}
