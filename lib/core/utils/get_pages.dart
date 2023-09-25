import 'package:get/get.dart';
import 'package:sushi_restaurant_app/core/model/food_model.dart';
import 'package:sushi_restaurant_app/features/into_page/views/into_page.dart';
import 'package:sushi_restaurant_app/features/menu/views/menu_view.dart';
import 'package:sushi_restaurant_app/features/menu/views/widgets/food_details_view.dart';

abstract class GetPages {
  static const menuView = '/MenuView';
  static const kFoodDetailsView = '/foodDetailsView';
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: '/',
      page: () => const IntoView(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: menuView,
      page: () => const MenuView(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: kFoodDetailsView,
      page: () => FoodDetailsView(foodModel: Get.arguments as FoodModel),
      transition: Transition.circularReveal,
    )
  ];
}
