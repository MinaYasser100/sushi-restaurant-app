import 'package:flutter/material.dart';
import '../../../../core/function/custom_outline_input_border.dart';
import 'promo_banner_menu.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PromoBannerMenu(),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: customOutlineInputBorder(),
              enabledBorder: customOutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
