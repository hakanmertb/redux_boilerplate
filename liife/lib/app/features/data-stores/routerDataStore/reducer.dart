// reducer.dart
import 'actions.dart';
import 'state.dart';

RouterState routerReducer(RouterState state, dynamic action) {
  if (action is ActivePathChanged) {
    return state.copyWith(currentPath: action.payload.path);
  }
  /////////////////////////////////
  else if (action is SetQueryParams) {
    return state.copyWith(queryParams: action.payload.queryParams);
  }
  /////////////////////////////////
  else if (action is SetParams) {
    return state.copyWith(params: action.payload.params);
  }
  /////////////////////////////////
  else if (action is Navigate) {
    return state.copyWith(currentPath: action.payload.path);
  }

  return state;
}
