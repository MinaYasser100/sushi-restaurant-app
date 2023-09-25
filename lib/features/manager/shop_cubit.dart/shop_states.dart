abstract class ShopStates {}

class ShopInitial extends ShopStates {}

class ShopAddToCartLoading extends ShopStates {}

class ShopAddToCartFailure extends ShopStates {
  final String errorMessage;

  ShopAddToCartFailure({required this.errorMessage});
}

class ShopAddToCartSuccess extends ShopStates {}

class ShopRemoveCartLoading extends ShopStates {}

class ShopRemoveCartFailure extends ShopStates {
  final String errorMessage;

  ShopRemoveCartFailure({required this.errorMessage});
}

class ShopRemoveCartSuccess extends ShopStates {}
