import 'package:liife/app/features/data-stores/authDataStore/state.dart';
import 'package:liife/app/features/data-stores/routerDataStore/state.dart';

class AppDataStoreState {
  AppDataStoreState({required this.routerState, required this.authState});
  final RouterState routerState;
  final AuthState authState;
  factory AppDataStoreState.initial() => AppDataStoreState(
      routerState: RouterState.initial(), authState: AuthState.initial());

  AppDataStoreState copyWith({RouterState? routerState, AuthState? authState}) {
    return AppDataStoreState(
        routerState: routerState ?? this.routerState,
        authState: authState ?? this.authState);
  }
}
