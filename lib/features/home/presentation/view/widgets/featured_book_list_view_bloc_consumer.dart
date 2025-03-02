import 'package:bookly_app/features/home/presentation/manger/cubit/fetch_featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListViewblocConsumer extends StatelessWidget {
  const FeaturedBookListViewblocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksSuccess) {
          return FeaturedBooksListView();
        } else if (state is FetchFeaturedBooksFaileur) {
          return Text(state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
