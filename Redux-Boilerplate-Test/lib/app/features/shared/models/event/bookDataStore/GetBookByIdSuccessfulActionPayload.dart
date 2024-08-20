import 'package:njktest2/app/features/shared/sdk/lib/api.dart';

class GetBookByIdSuccessfulActionPayload {
  final BookWithRelations book;

  GetBookByIdSuccessfulActionPayload(Map<String, dynamic> map)
      : book = map['book'];

  Map<String, dynamic> toJson() {
    return {
      'book': book.toJson(),
    };
  }
}
