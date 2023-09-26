import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/features/shop_cart_view/views/widgets/shop_cart_view_bady.dart';

import '../../../core/function/my_cart_app_bar.dart';

class ShopCartView extends StatelessWidget {
  const ShopCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCartAppBar(),
      body: const ShopCartViewBady(),
    );
  }
}
