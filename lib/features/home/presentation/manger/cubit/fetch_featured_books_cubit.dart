import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entites/book_entites.dart';
import 'package:meta/meta.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit() : super(FetchFeaturedBooksInitial());
}
