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
    centerTitle: true,
    title: const Text(
      'Tokyo',
      style: TextStyle(
        color: kDarkColor,
      ),
    ),
  );
}
