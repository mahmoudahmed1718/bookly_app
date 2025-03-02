import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/functions/setup_server_locator.dart';

import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/simple_bloc_observer.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/domain/uses_case/fetch_featured_book_use_case.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/fetch_featured_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  setupServerLocator();
  await Hive.openBox(kFeatuedBox);
  await Hive.openBox(kNewbox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

final GetIt getIt = GetIt.instance;

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FetchFeaturedBooksCubit(
                FetchFeaturedBookUseCase(getIt.get<HomeRepoImp>()))
              ..fetchFeaturedBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
