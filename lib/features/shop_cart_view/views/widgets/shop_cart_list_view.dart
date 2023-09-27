import 'package:flutter/material.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/utils/variables.dart';
import '../../../manager/shop_cubit.dart/shop_cubit.dart';

class ShopCartListView extends StatefulWidget {
  const ShopCartListView({
    super.key,
  });

  @override
  State<ShopCartListView> createState() => _ShopCartListViewState();
}

class _ShopCartListViewState extends State<ShopCartListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: kLightColor,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ListTile(
            title: Text(
              allCart[index].name,
              style: Styles.textStyle18Light,
            ),
            subtitle: Text(
              allCart[index].price,
              style: const TextStyle(
                color: kLightGrey,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                ShopCubit().removeFromCart(allCart[index]);
                setState(() {});
              },
              icon: const Icon(
                Icons.delete,
                color: kLightGrey,
              ),
            ),
          ),
        );
      },
      itemCount: allCart.length,
    );
  }
}
