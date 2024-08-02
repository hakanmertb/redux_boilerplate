import 'actions.dart';
import 'state.dart';

BookState bookReducer(BookState state, dynamic action) {
  if (action is GetBooks) {
    return state.copyWith(isLoading: true);
  }
  /////////////////////////////////
  else if (action is GetBooksSuccessful) {
    return state.copyWith(isLoading: false, books: action.payload["books"]);
  }
  /////////////////////////////////
  else if (action is GetBooksFailure) {
    return state.copyWith(isLoading: false);
  }
  return state;
}
