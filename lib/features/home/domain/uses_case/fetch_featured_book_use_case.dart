import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/core/utils/use_case.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBookUseCase extends UseCase<List<BookEntites>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBookUseCase(this.homeRepo);

  @override
  Future<Either<Failuer, List<BookEntites>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
