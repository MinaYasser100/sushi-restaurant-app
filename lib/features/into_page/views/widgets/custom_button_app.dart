import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

class CustomButtomApp extends StatelessWidget {
  const CustomButtomApp({
    super.key,
    required this.text,
    this.iconData = Icons.arrow_forward,
    this.onPressed,
    required this.width,
    this.buttonColor = kButtonColors,
  });
  final String text;
  final IconData? iconData;
  final void Function()? onPressed;
  final double width;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      minWidth: width,
      height: 60,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: textColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            iconData,
            color: textColor,
          )
        ],
      ),
    );
  }
}
