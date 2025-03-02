import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setupServerLocator() {
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
      HomeRemoteDataSourceImpl(ApiService(Dio())), HomeLocalDataSourceImpl()));
}
