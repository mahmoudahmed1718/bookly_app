import 'package:bookly_app/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SafeArea(
                child: CustomBookDetailsAppBar(),
              ),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              SimilarBookSection(),
               SizedBox(
                height: 40,
              ),
            ],
          ),
        ))
      ],
    );
    
  }
}
