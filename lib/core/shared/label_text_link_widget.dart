import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class CustomLabelTextLink extends StatelessWidget {
  const CustomLabelTextLink(
      {required this.label, required this.linkText, required this.route, super.key});
  final String label;
  final String linkText;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Styles.h2,
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: Text(
            linkText,
            style: Styles.h3.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
