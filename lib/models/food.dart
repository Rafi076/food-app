class Food {
  final String name; // chees burger
  final String description; // a burger full of cheese
  final String imagepath; //
  final double price; // 4.99
  final FoodCategory category; // burger
  List<Addon> availableAddons; // [extra cheese, sauce, extra patty ]

  Food(
      {required this.name,
      required this.description,
      required this.imagepath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

// food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
