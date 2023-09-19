import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/utils/assets.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/get_pages.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';
import 'custom_button_app.dart';

class IntoViewBody extends StatelessWidget {
  const IntoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'sushi man'.toUpperCase(),
            style: Styles.googleTextStyle32,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(Assets.twoImage),
          ),
          Text(
            'The taste of japanese food'.toUpperCase(),
            style: Styles.googleTextStyle40,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Feel the taste of the most popular japanese food from anywhere and anytime',
            style: TextStyle(
              height: 2,
              color: kSecondeColors,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtomApp(
            text: 'Get started',
            iconData: Icons.arrow_forward,
            onPressed: () {
              Get.toNamed(GetPages.menuView);
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
