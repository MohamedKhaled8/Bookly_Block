import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookleymvvm/Core/constant/service_locator.dart';
import 'package:bookleymvvm/Feature/search/view/search_view.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo_imp.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/home_view.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/book_detailes_view.dart';
import 'package:bookleymvvm/Feature/home/cubit/similar_books/similar_books_cubit.dart';
import 'package:bookleymvvm/Feature/splash/presentation/view/splash_view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>  SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),

      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SimilarBooksCubit(
      //       getIt.get<HomeRepoImpl>(),
      //     ),
      //     child: BookDetailsView(
      //       bookModel: state.extra as BookModel,
      //     ),
      //   ),
      // ),
    ],
  );
}
