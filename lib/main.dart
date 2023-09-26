import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/utils/get_pages.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_cubit.dart';

void main() {
  runApp(const SushiRestaurantApp());
}

class SushiRestaurantApp extends StatelessWidget {
  const SushiRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: GetMaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        debugShowCheckedModeBanner: false,
        getPages: GetPages.getPages,
      ),
    );
  }
}
