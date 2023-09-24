import 'package:get/get.dart';

class QuantityCountController extends GetxController {
  int quantityCount = 0;

  void decearmentQuantity() {
    quantityCount--;
    update();
  }

  void incearmentQuantity() {
    quantityCount++;
    update();
  }
}
