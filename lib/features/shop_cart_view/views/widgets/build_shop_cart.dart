import 'package:flutter/material.dart';
import '../../../into_page/views/widgets/custom_button_app.dart';
import 'shop_cart_list_view.dart';

class BuildShopCart extends StatelessWidget {
  const BuildShopCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: ShopCartListView(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButtomApp(
            text: 'Pay Now',
            onPressed: () {},
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
      ],
    );
  }
}
