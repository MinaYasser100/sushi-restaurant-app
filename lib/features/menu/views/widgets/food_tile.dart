import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';
import 'price_and_rating_of_food.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.foodModel});
  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            foodModel.imagePath,
            height: 140,
          ),
          Text(
            foodModel.name,
            style: Styles.googleTextStyle20.copyWith(
              color: kDarkColor,
            ),
          ),
          PriceAndRatingOfFood(foodModel: foodModel)
        ],
      ),
    );
  }
}
