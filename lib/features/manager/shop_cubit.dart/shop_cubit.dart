import 'package:sushi_restaurant_app/core/utils/assets.dart';
import 'package:sushi_restaurant_app/core/utils/variables.dart';
import 'package:sushi_restaurant_app/features/manager/shop_cubit.dart/shop_states.dart';
import '../../../core/model/food_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitial());
  final List<FoodModel> _foodMenu = [
    FoodModel(
      name: 'Slamon Sushi',
      price: '21.00',
      imagePath: Assets.oneImage,
      rating: '4.9',
    ),
    FoodModel(
      name: 'Tuna',
      price: '23.00',
      imagePath: Assets.threeImage,
      rating: '4.3',
    ),
  ];

  List<FoodModel> _cart = [];

  List<FoodModel> get foodMenu => _foodMenu;
  List<FoodModel> get cart => _cart;

  void addToCart(FoodModel foodModel, int quantity) {
    emit(ShopAddToCartLoading());
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodModel);
    }
    print(cart.length);
    allCart.addAll(cart);
    emit(ShopAddToCartSuccess());
  }

  void removeFromCart(FoodModel foodModel) {
    emit(ShopRemoveCartLoading());
    cart.remove(foodModel);
    emit(ShopRemoveCartSuccess());
  }
}
