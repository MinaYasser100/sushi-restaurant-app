import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';

class FoodDetailsListView extends StatelessWidget {
  const FoodDetailsListView({
    super.key,
    required this.foodModel,
  });

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ListView(
        children: [
          Image.asset(
            foodModel.imagePath,
            height: 160,
          ),
          const SizedBox(height: 25.0),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: kStarColor,
              ),
              const SizedBox(width: 5.0),
              Text(
                foodModel.rating,
                style: const TextStyle(
                  color: kMideumGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            foodModel.name,
            style: Styles.googleTextStyle28,
          ),
          const SizedBox(height: 25),
          const Text(
            'Description',
            style: Styles.textStyle18Dark,
          ),
          const SizedBox(height: 10),
          const Text(
            'Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasond sushi rice. its vibran hug and puttery texture promise an exquisite melt-in-your-mouth experence. paired whit a whisper of wasabi ans a side of tradiational pickled ginger, our salmon sushi is an ode to the purity and simplicity of authentic japanese flavors.',
            style: Styles.textStyle14,
          )
        ],
      ),
    );
  }
}
