import 'package:flutter/material.dart';

class TabsSwitch extends StatelessWidget {
  final String leftText;
  final String rightText;
  const TabsSwitch(
      {super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blueGrey.shade100),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50))),
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: Center(child: Text(leftText)),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50))),
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: Center(child: Text(rightText)),
          )
        ],
      ),
    );
  }
}
