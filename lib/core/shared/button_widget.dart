import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 19),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      child: Center(
          child: Text(
        "Search",
        style: Styles.h3.copyWith(color: Colors.white),
      )),
    );
  }
}
