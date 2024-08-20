import 'package:njktest2/app/features/shared/sdk/lib/api.dart';

class BookState {
  final bool isLoading;
  final List<BookWithRelations>? books;
  final BookWithRelations? activeBook;

  BookState({
    required this.isLoading,
    required this.books,
    required this.activeBook,
  });

  factory BookState.initial() =>
      BookState(isLoading: false, books: null, activeBook: null);

  BookState copyWith({
    bool? isLoading,
    List<BookWithRelations>? books,
    BookWithRelations? activeBook,
  }) {
    return BookState(
        isLoading: isLoading ?? this.isLoading,
        books: books ?? this.books,
        activeBook: activeBook ?? this.activeBook);
  }
}
