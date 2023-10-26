import 'package:flutter/material.dart';
import 'package:bookleymvvm/Core/constant/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/detailes_widgets/similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 15.h,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
