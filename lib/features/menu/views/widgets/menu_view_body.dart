import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';
import '../../../../core/function/custom_outline_input_border.dart';
import 'promo_banner_menu.dart';

class MenuViewBody extends StatefulWidget {
  const MenuViewBody({super.key});

  @override
  State<MenuViewBody> createState() => _MenuViewBodyState();
}

class _MenuViewBodyState extends State<MenuViewBody> {
  List<FoodModel> foodMenu = [
    FoodModel(
      name: 'Slamon Sushi',
      price: '21.00',
      imagePath: 'assets/images/one.png',
      rating: '4.9',
    ),
    FoodModel(
      name: 'Tuna',
      price: '23.00',
      imagePath: 'assets/images/three.png',
      rating: '4.3',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PromoBannerMenu(),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: customOutlineInputBorder(),
              enabledBorder: customOutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Food Menu',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: kDarkColor,
            ),
          ),
        ),
      ],
    );
  }
}
