import 'package:njktest2/app/features/data-stores/authDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/bookDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/routerDataStore/state.dart';

class AppDataStoreState {
  AppDataStoreState(
      {required this.bookState,
      required this.routerState,
      required this.authState});
  final BookState bookState;
  final RouterState routerState;
  final AuthState authState;
  factory AppDataStoreState.initial() => AppDataStoreState(
      bookState: BookState.initial(),
      routerState: RouterState.initial(),
      authState: AuthState.initial());

  AppDataStoreState copyWith(
      {BookState? bookState, RouterState? routerState, AuthState? authState}) {
    return AppDataStoreState(
        bookState: bookState ?? this.bookState,
        routerState: routerState ?? this.routerState,
        authState: authState ?? this.authState);
  }
}
