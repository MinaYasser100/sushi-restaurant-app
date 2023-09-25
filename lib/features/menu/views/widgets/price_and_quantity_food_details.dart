import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';
import 'package:sushi_restaurant_app/features/menu/manager/quantity_count_controller.dart';
import 'quantity_button.dart';

class PriceAndQuantityFoodDetails extends StatelessWidget {
  const PriceAndQuantityFoodDetails({
    super.key,
    required this.foodModel,
    required this.quantityCountController,
  });

  final FoodModel foodModel;
  final QuantityCountController quantityCountController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${foodModel.price}',
          style: Styles.textStyle18Light.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            QuantityButton(
              iconData: Icons.remove,
              onPressed: () {
                quantityCountController.decearmentQuantity();
              },
            ),
            GetBuilder<QuantityCountController>(builder: (controller) {
              return SizedBox(
                width: 40,
                child: Center(
                  child: Text(
                    '${controller.quantityCount}',
                    style: Styles.textStyle18Light.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),
            QuantityButton(
              onPressed: () {
                quantityCountController.incearmentQuantity();
              },
              iconData: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
