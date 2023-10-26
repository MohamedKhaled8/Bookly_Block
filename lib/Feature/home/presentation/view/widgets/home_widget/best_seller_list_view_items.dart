import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookleymvvm/Core/constant/style.dart';
import 'package:bookleymvvm/Core/constant/constant.dart';
import 'package:bookleymvvm/Core/constant/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/book_rating.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/custom_book_image.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Row(
                      children: [
                        Text(
                          '${bookModel.volumeInfo.pageCount} €',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          rating:
                              bookModel.volumeInfo.averageRating?.round() ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
