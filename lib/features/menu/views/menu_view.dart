import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/features/menu/views/widgets/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MenuViewBody(),
    );
  }
}
