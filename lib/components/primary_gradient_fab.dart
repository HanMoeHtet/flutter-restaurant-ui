import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryGradientFab extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  const PrimaryGradientFab(
      {super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.gradientColor1, AppColors.gradientColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(9999.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
            color: const Color(0xFF000000).withOpacity(0.25),
          )
        ],
      ),
      height: 72.0,
      width: 72.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9999.0),
          ),
        ),
        child: child,
      ),
    );
    ;
  }
}
