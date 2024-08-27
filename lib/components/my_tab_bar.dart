import 'package:flutter/material.dart';
import 'package:mealdeal/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      ),
      unselectedLabelStyle: TextStyle(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      indicatorColor: Theme.of(context).colorScheme.primary,
    );
  }
}
