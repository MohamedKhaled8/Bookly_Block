import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
import 'package:bookleymvvm/Feature/search/view/widgets/search_result_list_view.dart';
import 'package:bookleymvvm/Feature/search/view/widgets/custom_search_text_field.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SearchResultListView(),
          CustomSearchTextField(
            onSearch: (query) {},
          ),
        ]));
  }
}
