import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/constants.dart';
import 'package:flutter_restaurant_ui/screens/welcome_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Restaurant Demo',
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        toggleableActiveColor: AppColors.primaryColor,
      ),
    );
  }
}
