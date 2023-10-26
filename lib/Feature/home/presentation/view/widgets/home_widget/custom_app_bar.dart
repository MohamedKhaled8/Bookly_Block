import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookleymvvm/Core/constant/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bookleymvvm/Core/constant/image_assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20).r,
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18.h,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22.sp,
              ))
        ],
      ),
    );
  }
}
