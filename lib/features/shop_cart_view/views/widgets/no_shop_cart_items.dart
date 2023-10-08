import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/core/utils/styles.dart';

class NoShopCartItems extends StatelessWidget {
  const NoShopCartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'NO Items !',
        style: Styles.textStyle30.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
