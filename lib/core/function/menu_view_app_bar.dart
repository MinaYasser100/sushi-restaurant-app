import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/get_pages.dart';

AppBar menuViewAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kAppBarColor,
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
    actions: [
      IconButton(
        onPressed: () {
          Get.toNamed(GetPages.kShopCartView);
        },
        icon: const Icon(Icons.shopping_cart),
      ),
    ],
  );
}
