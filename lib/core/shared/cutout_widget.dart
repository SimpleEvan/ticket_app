import 'package:flutter/material.dart';

class TicketCutoutWidget extends StatelessWidget {
  final String direction;
  const TicketCutoutWidget({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: direction == "left" ? const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)): const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))) ),
    );
  }
}
