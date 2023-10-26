import 'package:flutter/material.dart';
import 'package:bookleymvvm/Core/constant/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/custom_app_bar.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/best_seller_list_view.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ).r,
                  child: const CustomAppBar()),
              // FeaturedBooksListView(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13).r,
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const FeaturedBookListView(),

              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).r,
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
