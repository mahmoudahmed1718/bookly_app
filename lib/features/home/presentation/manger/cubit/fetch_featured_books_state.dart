part of 'fetch_featured_books_cubit.dart';

@immutable
sealed class FetchFeaturedBooksState {}

class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}

class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<BookEntites> books;

  FetchFeaturedBooksSuccess({required this.books});
}

class FetchFeaturedBooksFaileur extends FetchFeaturedBooksState {
  final String errMessage;

  FetchFeaturedBooksFaileur(this.errMessage);
}
