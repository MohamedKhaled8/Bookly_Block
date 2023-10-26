import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookleymvvm/Core/constant/constant.dart';
import 'package:bookleymvvm/Core/constant/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Core/constant/service_locator.dart';
import 'Feature/home/cubit/news_book_cubit/news_book_cubit_cubit.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo_imp.dart';
import 'package:bookleymvvm/Feature/home/cubit/featured_books_cubit/featured_books_cubit_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(
                getIt.get<HomeRepoImp>(),
              )..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewsBookCubit(
                getIt.get<HomeRepoImp>(),
              )..fetchNewestBooks(),
            )
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
            title: 'BoolY',
          ),
        );
      },
    );
  }
}
