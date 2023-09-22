import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'food_details_list_view.dart';

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
      ],
    );
  }
}
