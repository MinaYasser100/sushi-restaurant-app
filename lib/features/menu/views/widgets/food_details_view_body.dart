import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_states.dart';
import 'package:sushi_restaurant_app/features/menu/manager/quantity_count_controller.dart';
import 'food_details_view_bloc_builder.dart';

class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key, required this.foodModel});
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    QuantityCountController quantityCountController =
        Get.put(QuantityCountController());
    return BlocBuilder<ShopCubit, ShopStates>(builder: (context, state) {
      return FoodDetailsViewBodyBlocBuilder(
        foodModel: foodModel,
        quantityCountController: quantityCountController,
      );
    });
  }
}
