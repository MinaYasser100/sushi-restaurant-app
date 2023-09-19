import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/function/menu_view_app_bar.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/features/menu/views/widgets/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondeColors,
      appBar: menuViewAppBar(context),
      body: const MenuViewBody(),
    );
  }
}
