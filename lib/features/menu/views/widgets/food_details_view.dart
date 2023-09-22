import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/features/menu/views/widgets/food_details_view_body.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({
    super.key,
    required this.foodModel,
  });
  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        elevation: 0.0,
        foregroundColor: kDarkColor,
      ),
      body: const FoodDetailsViewBody(),
    );
  }
}
