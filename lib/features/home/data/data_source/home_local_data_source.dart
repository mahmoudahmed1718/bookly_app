import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeaturedBooks();
  List<BookEntites> fetchNewsBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntites> fetchFeaturedBooks() {
    var box = Hive.box<BookEntites>(kFeatuedBox);
    return box.values.toList();
  }

  @override
  List<BookEntites> fetchNewsBooks() {
    var box = Hive.box<BookEntites>(kNewbox);
    return box.values.toList();
  }
}
