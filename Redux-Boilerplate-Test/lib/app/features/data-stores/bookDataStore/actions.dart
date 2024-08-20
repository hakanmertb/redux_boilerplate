import 'package:njktest2/app/features/shared/models/event/bookDataStore/GetBookByIdActionPayload.dart';
import 'package:njktest2/app/features/shared/models/event/bookDataStore/GetBookByIdSuccessfulActionPayload.dart';
import 'package:njktest2/app/features/shared/models/event/bookDataStore/GetBooksSuccessfulActionPayload.dart';

class GetBooks {
  GetBooks();
}

class GetBooksSuccessful {
  final GetBooksSuccessfulActionPayload payload;
  GetBooksSuccessful({required Map<String, dynamic> payload})
      : payload = GetBooksSuccessfulActionPayload(payload);
}

class GetBooksFailure {
  GetBooksFailure();
}

class GetBookById {
  final GetBookByIdActionPayload payload;
  GetBookById(Map<String, dynamic> payload)
      : payload = GetBookByIdActionPayload(payload);
}

class GetBookByIdSuccessful {
  final GetBookByIdSuccessfulActionPayload payload;
  GetBookByIdSuccessful({required Map<String, dynamic> payload})
      : payload = GetBookByIdSuccessfulActionPayload(payload);
}

class GetBookByIdFailure {}

class CreateBook {}

class CreateBookSuccessful {}

class CreateBookFailure {}

class UpdateBook {}

class UpdateBookSuccessful {}

class UpdateBookFailure {}

class DeleteBook {}

class DeleteBookSuccessful {}

class DeleteBookFailure {}

class ResetState {}
