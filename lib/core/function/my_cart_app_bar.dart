import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

AppBar myCartAppBar() {
  return AppBar(
    foregroundColor: Colors.white,
    title: const Text('My Cart'),
    backgroundColor: kMainColors,
    centerTitle: true,
  );
}
