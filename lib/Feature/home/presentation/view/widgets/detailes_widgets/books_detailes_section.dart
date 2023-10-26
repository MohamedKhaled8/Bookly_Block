import 'package:flutter/material.dart';
import 'package:bookleymvvm/Core/constant/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/book_rating.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/detailes_widgets/books_action.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/custom_book_image.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rating: bookModel.volumeInfo.averageRating ?? 0,
        ),
        SizedBox(
          height: 15.h,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
