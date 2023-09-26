import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';
import 'package:sushi_restaurant_app/features/shop_cart_view/views/widgets/shop_cart_view_bady.dart';

import '../../../core/function/my_cart_app_bar.dart';

class ShopCartView extends StatelessWidget {
  const ShopCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: Scaffold(
        appBar: myCartAppBar(),
        body: const ShopCartViewBady(),
      ),
    );
  }
}
