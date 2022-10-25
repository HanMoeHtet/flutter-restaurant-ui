import 'package:flutter/material.dart';

class FoodSizeRadioOption extends StatelessWidget {
  final double value;
  final double groupValue;
  final void Function(double?) onChanged;
  final double price;
  final String sizeLabel;

  const FoodSizeRadioOption({
    super.key,
    required this.onChanged,
    required this.price,
    required this.value,
    required this.groupValue,
    required this.sizeLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio<double>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Row(
          children: [
            const Icon(
              Icons.attach_money,
              color: Colors.grey,
              size: 14.0,
            ),
            Text(
              "$price",
              style: Theme.of(context).textTheme.bodySmall?.merge(
                    const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(sizeLabel),
      ],
    );
  }
}
