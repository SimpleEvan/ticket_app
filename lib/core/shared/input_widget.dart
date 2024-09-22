import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class InputWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final String direction;
  const InputWidget(
      {super.key,
      required this.text,
      required this.icon,
      this.direction = "right"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blueGrey.shade100,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text, style: Styles.h4.copyWith(fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
