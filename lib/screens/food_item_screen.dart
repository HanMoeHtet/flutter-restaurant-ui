import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/components/food_size_radio_option.dart';
import 'package:flutter_restaurant_ui/components/primary_gradient_button.dart';

import '../constants.dart';

class FoodItemScreen extends StatefulWidget {
  const FoodItemScreen({super.key});

  @override
  State<FoodItemScreen> createState() => _FoodItemScreenState();
}

class _FoodItemScreenState extends State<FoodItemScreen> {
  double _selectedSize = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Melting Cheese",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/dollar.png",
                    width: 16.0,
                    height: 24.0,
                  ),
                  Text("9.47"),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset(
                "assets/images/pizza1.png",
                height: 180.0,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text("2"),
                  const SizedBox(
                    width: 8.0,
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
              const SizedBox(
                height: 32.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodSizeRadioOption(
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedSize = value;
                          });
                        }
                      },
                      value: 8.0,
                      groupValue: _selectedSize,
                      price: 6.44,
                      sizeLabel: "8 inch",
                    ),
                    FoodSizeRadioOption(
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedSize = value;
                          });
                        }
                      },
                      value: 12.0,
                      groupValue: _selectedSize,
                      price: 9.47,
                      sizeLabel: "12 inch",
                    ),
                    FoodSizeRadioOption(
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedSize = value;
                          });
                        }
                      },
                      value: 16.0,
                      groupValue: _selectedSize,
                      price: 15.32,
                      sizeLabel: "16 inch",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                  padding: const EdgeInsets.all(
                    16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/star.png",
                            height: 24.0,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text("4.9"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/fire.png",
                            height: 24.0,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text("44 calories"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/watch.png",
                            height: 24.0,
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text("20 - 30 min"),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: PrimaryGradientButton(
                  child: Text("ADD TO CART"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
