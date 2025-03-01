import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SearchResultsListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
