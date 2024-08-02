import 'package:njktest2/services/api/lib/api.dart';

class GetBooks {
  dynamic getBooksActionPayload;
  GetBooks({required this.getBooksActionPayload});
}

/// isimlendirme düzeltilecek ve payload
class GetBooksSuccessful {
  final List<BookWithRelations> getBooksSuccessfulActionPayload;
  GetBooksSuccessful({required this.getBooksSuccessfulActionPayload});
}

class GetBooksFailure {
  dynamic getBooksFailurePayload;
  GetBooksFailure({required this.getBooksFailurePayload});
}

class GetBookById {}

class GetBookByIdSuccessful {}

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
