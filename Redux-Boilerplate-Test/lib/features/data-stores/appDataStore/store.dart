import 'package:njktest2/features/data-stores/bookDataStore/effects.dart';
import 'package:njktest2/features/data-stores/bookDataStore/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'state.dart';

Store<AppDataStoreState> createStore() {
  final epics =
      combineEpics<AppDataStoreState>([initAppEffects, bookDataStoreEffects]);
  final epicMiddleware = EpicMiddleware(epics);

  return Store<AppDataStoreState>(
    (state, action) =>
        AppDataStoreState(bookState: bookReducer(state.bookState, action)),
    initialState: AppDataStoreState.initial(),
    middleware: [epicMiddleware.call],
  );
}
