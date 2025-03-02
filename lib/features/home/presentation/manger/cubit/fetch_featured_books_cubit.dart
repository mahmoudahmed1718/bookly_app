import 'package:bloc/bloc.dart';

import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:bookly_app/features/home/domain/uses_case/fetch_featured_book_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final FetchFeaturedBookUseCase featuredBookUseCase;
  FetchFeaturedBooksCubit(this.featuredBookUseCase)
      : super(FetchFeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());

    var books = await featuredBookUseCase.call();
    books.fold((failuer) {
      ;
    }, (books) {
      emit(FetchFeaturedBooksSuccess(books: books));
    });
  }
}
