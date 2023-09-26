import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_states.dart';

class ShopCartViewBady extends StatelessWidget {
  const ShopCartViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopStates>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return null;
          },
        );
      },
    );
  }
}
