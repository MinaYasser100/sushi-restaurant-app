import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/features/into_page/views/widgets/into_view_bady.dart';

class IntoView extends StatelessWidget {
  const IntoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColors,
      body: IntoViewBody(),
    );
  }
}
