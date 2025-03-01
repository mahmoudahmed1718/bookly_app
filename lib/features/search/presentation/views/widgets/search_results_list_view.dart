
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
