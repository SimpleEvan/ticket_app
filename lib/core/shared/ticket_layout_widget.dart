import 'package:flutter/material.dart';

class TicketLayoutWidget extends StatelessWidget {
  final int divider;
  final double width;
  final Color dividerColor;

  const TicketLayoutWidget(
      {super.key,
      required this.divider,
      required this.dividerColor,
      this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / divider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: dividerColor)),
                )),
      );
    });
  }
}
