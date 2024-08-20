import 'package:njktest2/app/features/data-stores/authDataStore/effects.dart';
import 'package:njktest2/app/features/data-stores/authDataStore/reducer.dart';
import 'package:njktest2/app/features/data-stores/bookDataStore/effects.dart';
import 'package:njktest2/app/features/data-stores/bookDataStore/reducer.dart';
import 'package:njktest2/app/features/data-stores/routerDataStore/effects.dart';
import 'package:njktest2/app/features/data-stores/routerDataStore/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'state.dart';

Store<AppDataStoreState> createStore() {
  final epics = combineEpics<AppDataStoreState>([
    initAppEffects,
    bookDataStoreEffects,
    authDataStoreEffects,
    routerDataStoreEffects
  ]);
  final epicMiddleware = EpicMiddleware(epics);

  return Store<AppDataStoreState>(
    (state, action) => AppDataStoreState(
        bookState: bookReducer(state.bookState, action),
        routerState: routerReducer(state.routerState, action),
        authState: authReducer(state.authState, action)),
    initialState: AppDataStoreState.initial(),
    middleware: [epicMiddleware.call],
  );
}
