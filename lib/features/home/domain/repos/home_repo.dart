import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookEntites>>> fetchFeaturedBooks();
  Future<Either<Failuer, List<BookEntites>>> fetchNewsBooks();
}
