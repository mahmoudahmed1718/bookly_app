import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';

List<BookEntites> getData(Map<String, dynamic> booksData) {
  List<BookEntites> books = [];
  for (var bookItem in booksData["items"]) {
    books.add(BookModel.fromJson(bookItem));
  }
  return books;
}
