import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/function/shop_show_dialog.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/features/into_page/views/widgets/custom_button_app.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';
import 'package:sushi_restaurant_app/features/menu/manager/quantity_count_controller.dart';

import 'food_details_list_view.dart';
import 'price_and_quantity_food_details.dart';

class FoodDetailsViewBodyBlocBuilder extends StatelessWidget {
  const FoodDetailsViewBodyBlocBuilder({
    super.key,
    required this.foodModel,
    required this.quantityCountController,
  });

  final FoodModel foodModel;
  final QuantityCountController quantityCountController;

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
              PriceAndQuantityFoodDetails(
                  foodModel: foodModel,
                  quantityCountController: quantityCountController),
              const SizedBox(height: 20),
              CustomButtomApp(
                text: 'Add To Cart',
                width: MediaQuery.of(context).size.width * 0.8,
                onPressed: () {
                  if (quantityCountController.quantityCount > 0) {
                    ShopCubit().addToCart(
                        foodModel, quantityCountController.quantityCount);
                  }
                  shopShowDialog(context);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
