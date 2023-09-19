import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

class CustomButtomApp extends StatelessWidget {
  const CustomButtomApp({
    super.key,
    required this.text,
    this.iconData,
    this.onPressed,
  });
  final String text;
  final IconData? iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kButtonColors,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      minWidth: 300,
      height: 60,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[300],
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
