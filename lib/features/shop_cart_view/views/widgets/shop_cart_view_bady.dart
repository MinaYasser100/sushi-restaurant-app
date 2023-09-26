import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_states.dart';

class ShopCartViewBady extends StatelessWidget {
  const ShopCartViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopStates>(builder: (context, state) {
      print(ShopCubit().cart.isEmpty);
      if (ShopCubit().cart.isNotEmpty) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                ShopCubit().cart[index].name,
              ),
              subtitle: Text(ShopCubit().cart[index].price),
            );
          },
          itemCount: ShopCubit().cart.length,
        );
      } else {
        return Text('NO Items');
      }
    });
  }
}
