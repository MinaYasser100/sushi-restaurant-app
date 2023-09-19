import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'promo_menu_view.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kMainColors,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.all(25),
          child: const Row(
            children: [
              PromoMenuView(),
            ],
          ),
        )
      ],
    );
  }
}
