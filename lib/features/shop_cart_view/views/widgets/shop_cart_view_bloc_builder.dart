import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sushi_restaurant_app/core/utils/variables.dart';
import '../../../manager/shop_cubit.dart/shop_cubit.dart';
import '../../../manager/shop_cubit.dart/shop_states.dart';
import 'build_shop_cart.dart';
import 'no_shop_cart_items.dart';

class ShopCartViewBlocBuilder extends StatelessWidget {
  const ShopCartViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopStates>(builder: (context, state) {
      if (allCart.isNotEmpty) {
        return const BuildShopCart();
      } else {
        return const NoShopCartItems();
      }
    });
  }
}
