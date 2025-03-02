import 'package:bookly_app/features/home/domain/entites/book_entites.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeaturedBooks();
  List<BookEntites> fetchNewsBooks();
}
