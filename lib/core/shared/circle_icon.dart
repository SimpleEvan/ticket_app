import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
