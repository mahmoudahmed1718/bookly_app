import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewblocConsumer extends StatelessWidget {
  const FeaturedBookListViewblocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeaturedBooksListView();
  }
}
