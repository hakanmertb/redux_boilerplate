import 'dart:developer';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:njktest2/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/services/api/lib/api.dart';
import 'package:one_context/one_context.dart';
import 'package:redux_epics/redux_epics.dart';
import '../appDataStore/actions.dart';
import 'actions.dart';

final BookControllerApi api = BookControllerApi();

Epic<AppDataStoreState> bookDataStoreEffects = combineEpics([
  TypedEpic<AppDataStoreState, GetBooks>(_getBooks).call,
  TypedEpic<AppDataStoreState, GetBookById>(_getBooksById).call,
  TypedEpic<AppDataStoreState, CreateBook>(_createBook).call,
  TypedEpic<AppDataStoreState, UpdateBook>(_updateBook).call,
  TypedEpic<AppDataStoreState, DeleteBook>(_deleteBook).call,
]);

Epic<AppDataStoreState> initAppEffects = combineEpics([
  TypedEpic<AppDataStoreState, InitApp>(_getBooksInitApp).call,
]);

Stream<dynamic> _getBooksInitApp(
    Stream<InitApp> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    StoreProvider.of<AppDataStoreState>(OneContext().context!)
        .dispatch(GetBooks(getBooksActionPayload: null));
  });
}

Stream<dynamic> _getBooks(
    Stream<GetBooks> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await api.bookControllerFind();
    
      yield GetBooksSuccessful(getBooksSuccessfulActionPayload: result ?? []);
    } catch (e) {
      log(e.toString());
      yield GetBooksFailure(getBooksFailurePayload: e);
    }
  });
}

Stream<dynamic> _getBooksById(
    Stream<GetBookById> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    if (/*/ service.getbooks*/ 1 > 0) {
      yield GetBookByIdSuccessful();
    } else {
      yield GetBookByIdFailure();
    }
  });
}

Stream<dynamic> _createBook(
    Stream<CreateBook> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    if (/*/ service.getbooks*/ 1 > 0) {
      yield CreateBookSuccessful();
    } else {
      yield CreateBookFailure();
    }
  });
}

Stream<dynamic> _updateBook(
    Stream<UpdateBook> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    if (/*/ service.getbooks*/ 1 > 0) {
      yield UpdateBookSuccessful();
    } else {
      yield UpdateBookFailure();
    }
  });
}

Stream<dynamic> _deleteBook(
    Stream<DeleteBook> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    if (/*/ service.getbooks*/ 1 > 0) {
      yield DeleteBookSuccessful();
    } else {
      yield DeleteBookFailure();
    }
  });
}