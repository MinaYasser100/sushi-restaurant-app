import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

class PriceAndRatingOfFood extends StatelessWidget {
  const PriceAndRatingOfFood({
    super.key,
    required this.foodModel,
  });

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$${foodModel.price}',
            style: const TextStyle(
              color: kDarkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[800],
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                foodModel.rating,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
