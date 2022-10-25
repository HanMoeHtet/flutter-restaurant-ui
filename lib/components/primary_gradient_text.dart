import 'package:flutter/material.dart';
import 'package:flutter_restaurant_ui/constants.dart';

class PrimaryGradientText extends StatelessWidget {
  final Text child;

  const PrimaryGradientText({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return const LinearGradient(
          colors: [AppColors.gradientColor1, AppColors.gradientColor2],
        ).createShader(
          Rect.fromLTWH(
            0,
            0,
            bounds.width,
            bounds.height,
          ),
        );
      },
      child: child,
    );
  }
}
