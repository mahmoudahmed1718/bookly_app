import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemotDataSource homeRemotDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(this.homeRemotDataSource, this.homeLocalDataSource);

  @override
  Future<Either<Failuer, List<BookEntites>>> fetchFeaturedBooks() async {
    try {
      var books = await homeRemotDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failuer());
    }
  }

  @override
  Future<Either<Failuer, List<BookEntites>>> fetchNewsBooks() async {
    try {
      var books = await homeRemotDataSource.fetchNewsBooks();
      return right(books);
    } catch (e) {
      return left(Failuer());
    }
  }
}
