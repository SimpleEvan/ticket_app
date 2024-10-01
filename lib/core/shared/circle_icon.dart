import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final Color circleColor;
  const CircleIcon({super.key, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: circleColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
