import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/detailes_widgets/SimilarBooksSection.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/detailes_widgets/books_detailes_section.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/detailes_widgets/custom_book_details_app_bar.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers, unused_local_variable
    var _width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15).r,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailesSection(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 0.h,
                  ),
                ),
                const SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
