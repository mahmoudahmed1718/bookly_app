import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/functions/get_data.dart';
import 'package:bookly_app/core/functions/save_data.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:hive/hive.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntites>> fetchFeaturedBooks();
  Future<List<BookEntites>> fetchNewsBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemotDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntites>> fetchFeaturedBooks() async {
    var booksData = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntites> books = getData(booksData);
    saveData(books, nameBox: kFeatuedBox);
    return books;
  }

  @override
  Future<List<BookEntites>> fetchNewsBooks() async {
    var booksData = await apiService.get(
        endPoint: 'volumes?Filtering=news-ebooks&q=programming');
    List<BookEntites> books = getData(booksData);
    saveData(books, nameBox: kNewbox);
    return books;
  }
}
