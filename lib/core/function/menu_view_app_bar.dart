import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

AppBar menuViewAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const Icon(
      Icons.menu,
      color: kDarkColor,
    ),
    titleSpacing: 50,
    title: Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.14,
      ),
      child: const Text(
        'Tokyo',
        style: TextStyle(
          color: kDarkColor,
        ),
      ),
    ),
  );
}
