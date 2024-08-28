import 'dart:developer';
import 'package:njktest2/app/features/auth/services/token-service/token-service.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/app/features/shared/helper-classes/jsonata/jsonata-object.class.dart';
import 'package:njktest2/app/features/shared/sdk/lib/api.dart';
import 'package:redux_epics/redux_epics.dart';
import '../appDataStore/actions.dart';
import 'actions.dart';

final BookControllerApi api = BookControllerApi();
final TokenService tokenService = TokenService.instance;

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
    log(defaultApiClient.authentication.toString());
    log("token ${(await tokenService.getToken())}");
    yield GetBooks();
  });
}

Stream<dynamic> _getBooks(
    Stream<GetBooks> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      yield await api.bookControllerFind().then((data) {
        final payload = {
          'books': data,
        };
        return GetBooksSuccessful(payload: payload);
      });
    } catch (err) {
      log(err.toString());
      yield GetBooksFailure();
    }
  });
}

Stream<dynamic> _getBooksById(
    Stream<GetBookById> actions, EpicStore<AppDataStoreState> store) {
  return actions.asyncExpand((action) async* {
    try {
      // init data
      final jsonAtaObject = JsonAtaObject.chain(action.payload);

      // pre
      await jsonAtaObject.transform(r"$");
      await jsonAtaObject.transform(r'{\"data\":$,\"id\":$.data.id}');
      await jsonAtaObject.transform(r"$.data.id");

      final data = jsonAtaObject.value;

      // API
      var response = await api.bookControllerFindById(data);

      // post
      final responseJsonAtaObject = JsonAtaObject.chain(response);
      await responseJsonAtaObject.transform(r"$");

      final responseData = responseJsonAtaObject.value;

      // payload
      final payload = {"book": responseData};

      yield GetBookByIdSuccessful(payload: payload);
    } catch (err) {
      log(err.toString());
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
