import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/assets.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'promo_menu_view.dart';

class PromoBannerMenu extends StatelessWidget {
  const PromoBannerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kMainColors,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const PromoMenuView(),
          Image.asset(
            Assets.sushiImage,
            height: 100,
          ),
        ],
      ),
    );
  }
}
