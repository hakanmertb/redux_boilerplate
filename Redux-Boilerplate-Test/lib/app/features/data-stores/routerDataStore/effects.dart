import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:one_context/one_context.dart';
import 'package:redux_epics/redux_epics.dart';
import 'actions.dart';

Epic<AppDataStoreState> routerDataStoreEffects = combineEpics([
  TypedEpic<AppDataStoreState, ActivePathChanged>(_handleActivePathChanged)
      .call,
  TypedEpic<AppDataStoreState, SetQueryParams>(_handleSetQueryParams).call,
  TypedEpic<AppDataStoreState, SetParams>(_handleSetParams).call,
  TypedEpic<AppDataStoreState, Navigate>(_handleNavigate).call,
]);

Stream<dynamic> _handleActivePathChanged(
    Stream<ActivePathChanged> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    // Implementation for ActivePathChanged
  });
}

Stream<dynamic> _handleSetQueryParams(
    Stream<SetQueryParams> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    // Implementation for SetQueryParams
  });
}

Stream<dynamic> _handleSetParams(
    Stream<SetParams> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    // Implementation for SetParams
  });
}

Stream<dynamic> _handleNavigate(
    Stream<Navigate> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    OneContext().pushNamed(action.payload.path!);
  });
}
