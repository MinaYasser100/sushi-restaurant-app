import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'food_details_list_view.dart';
import 'price_and_quantity_food_details.dart';

class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key, required this.foodModel});
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FoodDetailsListView(foodModel: foodModel),
        ),
        Container(
          padding: const EdgeInsets.all(25.0),
          color: kMainColors,
          child: Column(
            children: [
              PriceAndQuantityFoodDetails(foodModel: foodModel),
            ],
          ),
        ),
      ],
    );
  }
}
