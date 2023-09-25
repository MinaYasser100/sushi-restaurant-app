import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
import 'package:sushi_restaurant_app/core/utils/get_pages.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';

Future<dynamic> shopShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: kMainColors,
        content: const Text('Successfully added to cart',
            style: Styles.textStyle18Light),
        actions: [
          TextButton(
            onPressed: () {
              Get.offNamed(GetPages.menuView);
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: kLightGrey,
              ),
            ),
          ),
        ],
      );
    },
  );
}
