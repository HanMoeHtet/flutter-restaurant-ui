import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/components/food_list_item.dart';
import 'package:flutter_restaurant_ui/components/popular_food_list_item.dart';
import 'package:flutter_restaurant_ui/components/primary_gradient_fab.dart';
import 'package:flutter_restaurant_ui/constants.dart';
import 'package:flutter_restaurant_ui/screens/food_item_screen.dart';

import '../components/primary_gradient_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();
  bool _hasScrollOffset = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 0) {
        if (!_hasScrollOffset) {
          setState(() {
            _hasScrollOffset = true;
          });
        }
      } else {
        if (_hasScrollOffset) {
          setState(() {
            _hasScrollOffset = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                if (_hasScrollOffset)
                  BoxShadow(
                    blurRadius: 4.0,
                    offset: const Offset(
                      0,
                      4.0,
                    ),
                    color: const Color(0xFF000000).withOpacity(0.20),
                  ),
              ],
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Material(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                      PrimaryGradientIconButton(
                        onPressed: () {},
                        child: const Icon(Icons.search),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView(
              controller: _scrollController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Han",
                        style:
                            Theme.of(context).textTheme.headlineMedium?.merge(
                                  const TextStyle(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                      ),
                      Text(
                        "Find your food",
                        style: Theme.of(context).textTheme.headlineLarge?.merge(
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: 100.0,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            FoodListItem(
                              imageUri: "assets/images/food1.png",
                              title: "Hamburger",
                              isActive: true,
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food2.png",
                              title: "Lobster",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food3.png",
                              title: "Sushi",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food4.png",
                              title: "Pizza",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food1.png",
                              title: "Hamburger",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food2.png",
                              title: "Lobster",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            FoodListItem(
                              imageUri: "assets/images/food3.png",
                              title: "Sushi",
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Popular",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.merge(
                                  const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style:
                                  Theme.of(context).textTheme.bodyMedium?.merge(
                                        const TextStyle(
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PopularFoodListItem(
                            title: "ချာပါတီ",
                            calories: 44,
                            imageUri: "assets/images/pizza1.png",
                            price: 1.99,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return const FoodItemScreen();
                                  }),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          PopularFoodListItem(
                            title: "ပလာတာ",
                            calories: 54,
                            imageUri: "assets/images/pizza2.png",
                            price: 2.99,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return const FoodItemScreen();
                                  }),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PopularFoodListItem(
                            title: "Melting Cheese",
                            calories: 44,
                            imageUri: "assets/images/pizza1.png",
                            price: 9.47,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return const FoodItemScreen();
                                  }),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          PopularFoodListItem(
                            title: "Pizza Capricciosa",
                            calories: 54,
                            imageUri: "assets/images/pizza2.png",
                            price: 12.55,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return const FoodItemScreen();
                                  }),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: PrimaryGradientFab(
        onPressed: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeOut,
          );
        },
        child: Text("Menu"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
