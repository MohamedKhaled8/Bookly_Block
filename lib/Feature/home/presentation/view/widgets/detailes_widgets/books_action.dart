import 'package:flutter/material.dart';
import 'package:bookleymvvm/Core/functions/get_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Core/functions/launcher_url.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/widgets/custom_shard_button/custom_button.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class BooksAction extends StatelessWidget {
  const BooksAction({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: "19.99€",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () {
              launchCustomUr(context, bookModel.volumeInfo.previewLink);
            },
            fontSize: 16.h,
            text: getText(bookModel),
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}
