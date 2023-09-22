import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/get_pages.dart';
import 'package:sushi_restaurant_app/features/menu/views/widgets/food_tile.dart';

class ListViewFoodTile extends StatelessWidget {
  const ListViewFoodTile({
    super.key,
    required this.foodMenu,
  });

  final List<FoodModel> foodMenu;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => FoodTile(
        foodModel: foodMenu[index],
        onTap: () {
          Get.toNamed(GetPages.kFoodDetailsView, arguments: foodMenu[index]);
        },
      ),
      itemCount: foodMenu.length,
    );
  }
}
