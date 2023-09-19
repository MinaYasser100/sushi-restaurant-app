import 'package:get/get.dart';
import 'package:sushi_restaurant_app/features/into_page/views/into_page.dart';
import 'package:sushi_restaurant_app/features/menu/views/menu_view.dart';

abstract class GetPages {
  static const menuView = '/MenuView';
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: '/',
      page: () => const IntoView(),
    ),
    GetPage(
      name: menuView,
      page: () => const MenuView(),
    )
  ];
}
