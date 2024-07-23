import 'package:redux/redux.dart';
import 'package:redux_boilerplate/features/counter/effects.dart';
import 'package:redux_epics/redux_epics.dart';
import 'root_state.dart';

Store<RootState> createStore() {
  final epics = combineEpics<RootState>([rootEffects]);
  final epicMiddleware = EpicMiddleware(epics);

  return Store<RootState>(
    (state, action) => RootState(),
    initialState: RootState.initial(),
    middleware: [epicMiddleware.call],
  );
}
