import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/components/primary_gradient_button.dart';
import 'package:flutter_restaurant_ui/components/primary_gradient_text.dart';

import '../constants.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 0.0,
            bottom: 0.0,
            right: 0,
            left: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                gradient: const LinearGradient(
                  colors: [AppColors.gradientColor1, AppColors.gradientColor2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Image.asset(
              "assets/images/welcome-background.png",
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Positioned(
            top: 20.0,
            left: 0.0,
            child: Image.asset(
              "assets/images/delivery-man.png",
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 12.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Quick Delivery at your ",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            WidgetSpan(
                              child: PrimaryGradientText(
                                child: Text(
                                  'Doorstep',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                              alignment: PlaceholderAlignment.baseline,
                              baseline: TextBaseline.alphabetic,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Home delivery and online reservation system for restaurants and cafes",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium?.merge(
                              const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      PrimaryGradientButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Text('Get Started'),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
