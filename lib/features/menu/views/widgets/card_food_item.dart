import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/assets.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';

class CardFoodItem extends StatelessWidget {
  const CardFoodItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.twoImage,
                height: 60,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salmon Eggs',
                    style: Styles.googleTextStyle18,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '\$21.00',
                    style: TextStyle(
                      color: kMideumGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(
            Icons.favorite_outline,
            color: Colors.grey,
            size: 28,
          )
        ],
      ),
    );
  }
}
