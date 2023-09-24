import 'package:get/get.dart';

class QuantityCountController extends GetxController {
  int quantityCount = 0;

  void decearmentQuantity() {
    if (quantityCount > 0) {
      quantityCount--;
    }
    update();
  }

  void incearmentQuantity() {
    quantityCount++;
    update();
  }
}
