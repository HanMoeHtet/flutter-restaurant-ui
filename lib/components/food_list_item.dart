import 'package:flutter/material.dart';

import '../constants.dart';

class FoodListItem extends StatelessWidget {
  final String imageUri;
  final String title;
  final bool? isActive;

  const FoodListItem(
      {super.key,
      required this.imageUri,
      required this.title,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: isActive == true
                  ? Border.all(color: AppColors.primaryColor, width: 4.0)
                  : null,
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  spreadRadius: 0,
                  offset: const Offset(0, 0),
                  color: const Color(0xFF000000).withOpacity(0.20),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imageUri,
                width: 48.0,
                height: 48.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60.0),
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
