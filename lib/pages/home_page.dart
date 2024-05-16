import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_current_location.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_decription_box.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_drawer.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_food_title.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_silver_app_bar.dart';
import 'package:food_pandas_food_delivery_app_with_backend/components/my_tab_bar.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/food.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/restaurant.dart';
import 'package:food_pandas_food_delivery_app_with_backend/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out return a list of food items that belong to the specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((Category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(Category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get idividual food
          final food = categoryMenu[index];

          //retyrn food title UI
          return FoodTitle(
              food: food,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(food: food))));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySilverAppBar(
                  title: MyTabbar(
                    tabController: _tabController,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // my current Location
                      const MyCurrentLocation(),

                      // description box
                      const MyDescriptionBox(
                        deliveryFee: '50',
                        deliveryTime: '20 min',
                        restaurantDescription:
                            'Your restaurant description here',
                      ),
                    ],
                  ),
                )
              ],
          body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                    controller: _tabController,
                    children: getFoodInThisCategory(restaurant.menu),
                  ))),
    );
  }
}
