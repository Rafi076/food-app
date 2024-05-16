import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/cart_item.dart';
import 'food.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burger

    Food(
        name: "Clssic BBQ Burger",
        description: "A classic patty with melted cheese and veg",
        imagepath: "lib/images/burgers/bbq_burger.jpg",
        price: 280,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "bluemoon Burger",
        description: "A classic burger with sausage and letus",
        imagepath: "lib/images/burgers/bluemoon_burger.jpg",
        price: 320,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Clssic Cheese Burger",
        description: "A juicy beef patty with melted cheese",
        imagepath: "lib/images/burgers/cheese_burger.jpg",
        price: 350,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "vegitable Burger",
        description: "A burger with letus,salads,tomatos",
        imagepath: "lib/images/burgers/veg_burger.jpg",
        price: 350,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    //salads
    Food(
        name: "Greek salad",
        description:
            "Greek Salad: A refreshing mix of crisp lettuce and lemon vinaigrette.",
        imagepath: "lib/images/salads/1salads.jpg",
        price: 350,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Caesar Salad",
        description:
            "Caesar Salad:  with savory and finished with grated Parmesan cheese for a timeless favorite.",
        imagepath: "lib/images/salads/2salads.jpg",
        price: 250,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Cobb Salad",
        description:
            "Cobb Salad: A hearty ensemble of mixed greens, ripe avocado, drizzled with a tangy vinaigrette.",
        imagepath: "lib/images/salads/3salads.jpg",
        price: 300,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Caprese Salad",
        description:
            "Caprese Salad: A simple yet elegant combination of fresh  balsamic glaze for a burst of flavor.",
        imagepath: "lib/images/salads/4salads.jpg",
        price: 350,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Waldorf Salad",
        description:
            "Waldorf Salad: A sweet and crunchy blend of crisp apples,a delightful contrast of textures and tastes.",
        imagepath: "lib/images/salads/5salads.jpg",
        price: 350,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    // sides
    Food(
        name: "Sausage",
        description:
            "A sweet and crunchy blend of crisp apples, celery, served over a bed of lettuce textures and tastes.",
        imagepath: "lib/images/sides/1sides.jpg",
        price: 30,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "cheese",
        description:
            "A sweet and crunchy blend of crisp apples,textures and tastes.",
        imagepath: "lib/images/sides/2sides.jpg",
        price: 30,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "olive",
        description:
            "A sweet and crunchy blend of crisp apples, textures and tastes.",
        imagepath: "lib/images/sides/3sides.jpg",
        price: 30,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "strawbery",
        description:
            "A sweet and crunchy blend of crisp apples, celery offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/sides/4sides.jpg",
        price: 30,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "capsicum",
        description:
            "A sweet and crunchy blend of crisp apples,  textures and tastes.",
        imagepath: "lib/images/sides/5sides.jpg",
        price: 30,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    // desserts
    Food(
        name: "chocolate pudding",
        description:
            "A sweet and crunchy blend of crisp apples,  offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/chocolate_pudding.jpg",
        price: 30,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),
    Food(
        name: "patishapta",
        description:
            "A sweet and crunchy blend of crisp apples, celery, of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/patishapta.jpg",
        price: 30,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "parata",
        description:
            "A sweet and crunchy blend of crisp apples, celery,  offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/parata.jpg",
        price: 30,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Oreo pesty",
        description:
            "A sweet and crunchy blend of crisp apples, celery,  over a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/oreo_pesty.jpg",
        price: 30,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Browni",
        description:
            "A sweet and crunchy blend of crisp apples, served over a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/Browni.jpg",
        price: 300,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Cherry delight",
        description:
            "A sweet and crunchy blend of crisp apples,  a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/desserts/cherry_delight.jpg",
        price: 30,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    //drinks
    Food(
        name: "Mojito",
        description:
            "A sweet and crunchy blend of crisp apples,  a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/drinks/1drinks.jpg",
        price: 30,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "mint lemon",
        description:
            "A sweet and crunchy blend of crisp apples,  textures and tastes.",
        imagepath: "lib/images/drinks/2drinks.jpg",
        price: 30,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "orange mojito",
        description:
            "A sweet and crunchy blend of crisp apples,and served over a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/drinks/3drinks.jpg",
        price: 30,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "orange",
        description:
            "A sweet and crunchy blend of crisp apples, celery, grapes, and walnuts, mixed with creamy mayonnaise and served over a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/drinks/4drinks.jpg",
        price: 300,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "Strobery berry ",
        description:
            "A sweet and crunchy blend of crisp apples, celery, grapes, and served over a bed of lettuce, offering a delightful contrast of textures and tastes.",
        imagepath: "lib/images/drinks/5drinks.jpg",
        price: 30,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),

    Food(
        name: "plain leomon",
        description:
            "A sweet and crunchy blend of crisp apples, celery,  contrast of textures and tastes.",
        imagepath: "lib/images/drinks/6drinks.jpg",
        price: 30,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 100),
          Addon(name: "Extra Bacon", price: 50),
          Addon(name: "Extra olive", price: 50),
        ]),
  ];
  /*
  GETTERS:
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
    OPERATIONS:
  */

  // user cart
  final List<CartItem> _cart = [];

  // ADD TO CART
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item are the same
      bool isSameFood = item.food == food;

      // check if the list of the selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item alreadt exisit , increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise add a new cart item
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // REMOVE FROM CART
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // GET TOTAL PRICE
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // GET TOTAL NUMBER OF ITEMS IN CART
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //CLEAR CART
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
  HELPEARS
   */

  // GENERATE A RECEPT
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // formate the data to include up to secounds only
    String formattedData =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedData);
    receipt.writeln();
    receipt.writeln("--------------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatePrice(CartItem.food.price)}");

      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-on: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("--------------");
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatePrice(getTotalPrice())}");

    return receipt.toString();
  }

  //FORMATE DOUBLE VALUE INTO MONEY
  String _formatePrice(double price) {
    return "${price.toStringAsFixed(2)}" + "TK";
  }

  //FORMATE LIST OF ADDONS INTO A STRING SUMMARY
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatePrice(addon.price)})")
        .join(", ");
  }
}
