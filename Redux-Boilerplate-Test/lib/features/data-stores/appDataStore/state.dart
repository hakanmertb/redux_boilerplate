import '../bookDataStore/state.dart';

class AppDataStoreState {
  AppDataStoreState({required this.bookState});
  final BookState bookState;
  factory AppDataStoreState.initial() =>
      AppDataStoreState(bookState: BookState.initial());

  AppDataStoreState copyWith({BookState? bookState}) {
    return AppDataStoreState(bookState: bookState ?? this.bookState);
  }
}
