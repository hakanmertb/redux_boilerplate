class GetBooks {
  GetBooks();
}

/// isimlendirme düzeltilecek ve payload
class GetBooksSuccessful {
  final Map<String, dynamic> payload;
  GetBooksSuccessful(this.payload);
}

class GetBooksFailure {
  GetBooksFailure();
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
