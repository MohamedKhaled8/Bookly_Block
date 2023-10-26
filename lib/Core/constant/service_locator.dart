import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookleymvvm/Core/api/api_services.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiServices>()));
}
