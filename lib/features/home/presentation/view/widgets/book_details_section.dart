import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/box_actions.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.21),
          child: const FeatureListViewItem(
            imageUrl: '',
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BoxActions(),
      ],
    );
  }
}
