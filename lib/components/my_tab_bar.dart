import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/food.dart';

class MyTabbar extends StatelessWidget {
  final TabController tabController;
  const MyTabbar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTab() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTab(),
      ),
    );
  }
}
