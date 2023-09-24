import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.onPressed,
    required this.iconData,
  });
  final void Function()? onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kLightColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
