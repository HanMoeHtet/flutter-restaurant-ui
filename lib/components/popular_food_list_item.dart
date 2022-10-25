import 'package:flutter/material.dart';

import '../constants.dart';

class PopularFoodListItem extends StatelessWidget {
  final String title;
  final double calories;
  final String imageUri;
  final double price;
  final void Function() onTap;

  const PopularFoodListItem(
      {super.key,
      required this.title,
      required this.calories,
      required this.imageUri,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/fire.png",
                      width: 18.0,
                      height: 24.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "$calories calories",
                      style: Theme.of(context).textTheme.bodyMedium?.merge(
                            const TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Image.asset(imageUri),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/dollar.png",
                      width: 18.0,
                      height: 24.0,
                    ),
                    Text("$price"),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      color: AppColors.primaryColor,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
