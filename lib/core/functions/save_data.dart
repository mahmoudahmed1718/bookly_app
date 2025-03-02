import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntites> books, {required String nameBox}) {
  var box = Hive.box(nameBox);
  box.addAll(books);
}
