import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/constants.dart';

class PrimaryGradientIconButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final Color? splashColor;

  const PrimaryGradientIconButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.splashColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.gradientColor1, AppColors.gradientColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
            color: const Color(0xFF000000).withOpacity(0.25),
          )
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        color: Colors.white,
        icon: child,
        splashColor: splashColor,
      ),
    );
  }
}
