import 'package:food_pandas_food_delivery_app_with_backend/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalprice {
    double addonsPricec =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPricec) * quantity;
  }
}
