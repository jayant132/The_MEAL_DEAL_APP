import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Define consistent text styles
    var primaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    var secondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 14,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Delivery Fee Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$0.99',
                style: primaryTextStyle,
              ),
              const SizedBox(height: 4), // Added spacing between text elements
              Text(
                'Delivery Fee',
                style: secondaryTextStyle,
              ),
            ],
          ),
          // Delivery Time Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '15 - 30 min',
                style: primaryTextStyle,
              ),
              const SizedBox(height: 4), // Added spacing between text elements
              Text(
                'Delivery Time',
                style: secondaryTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
