import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class TicketContentWidget extends StatelessWidget {
  final String header;
  final String value;
  final CrossAxisAlignment alignment;
  final Color textColor;

  const TicketContentWidget(
      {super.key,
      required this.header,
      required this.value,
      required this.alignment,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          value,
          style: Styles.h3.copyWith(color: textColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          header,
          style: Styles.h4.copyWith(color: textColor),
        ),
      ],
    );
  }
}
