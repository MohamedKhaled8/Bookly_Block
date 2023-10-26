import 'package:flutter/material.dart';
import 'package:bookleymvvm/Feature/home/presentation/view/widgets/home_widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
