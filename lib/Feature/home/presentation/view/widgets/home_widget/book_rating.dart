import 'package:flutter/material.dart';
import 'package:bookleymvvm/Core/constant/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 15.h,
        ),
        SizedBox(
          width: 10.h,
        ),
        Text(rating.toString(), style: Styles.textStyle16),
        SizedBox(
          width: 10.h,
        ),
        Opacity(
          opacity: .5,
          child: Text('($count)',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
}
