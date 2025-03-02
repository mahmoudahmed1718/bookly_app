import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemotDataSource homeRemotDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(this.homeRemotDataSource, this.homeLocalDataSource);

  @override
  Future<Either<Failuer, List<BookEntites>>> fetchFeaturedBooks() async {
    try {
      var booksList = await homeRemotDataSource.fetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemotDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaileur.fromDioExption(e));
      } else {
        return left(ServerFaileur(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failuer, List<BookEntites>>> fetchNewsBooks() async {
    try {
      var booksList = await homeRemotDataSource.fetchNewsBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemotDataSource.fetchNewsBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaileur.fromDioExption(e));
      } else {
        return left(ServerFaileur(e.toString()));
      }
    }
  }
}
