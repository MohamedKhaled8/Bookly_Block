import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/cubit/news_book_cubit/news_book_cubit_cubit.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/best_seller_list_view_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBookCubit, NewsBookCubitState>(
      builder: (context, state) {
        if (state is NewsBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10).r,
                  child: BestSellerListViewItems(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsBooksFailure) {
          return const Text("Fairrrrrrrrrrrrrrrrrrrrrrr");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
