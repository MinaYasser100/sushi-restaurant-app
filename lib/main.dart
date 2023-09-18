import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const SushiRestaurantApp());
}

class SushiRestaurantApp extends StatelessWidget {
  const SushiRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
    );
  }
}
