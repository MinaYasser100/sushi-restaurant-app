import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';
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
              Navigator.pop(context);
              Navigator.pop(context);
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
