import 'package:njktest2/app/features/shared/sdk/lib/api.dart';

class GetBooksSuccessfulActionPayload {
  final List<BookWithRelations> books;

  GetBooksSuccessfulActionPayload(Map<String, dynamic> map)
      : books = map['books'];

  Map<String, dynamic> toJson() {
    return {
      'books': books.map((book) => book.toJson()).toList(),
    };
  }
}
