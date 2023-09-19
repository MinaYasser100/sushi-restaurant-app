import 'package:flutter/material.dart';
import 'promo_banner_menu.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PromoBannerMenu(),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
