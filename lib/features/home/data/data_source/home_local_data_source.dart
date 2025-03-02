import 'package:bookly_app/features/home/domain/entites/book_entites.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeaturedBooks();
  List<BookEntites> fetchNewsBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntites> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntites> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
