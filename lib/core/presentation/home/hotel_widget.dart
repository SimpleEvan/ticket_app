import 'package:flutter/material.dart';

import '../../styles/app_styles.dart';

class HotelPage extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage("assets/images/${hotel['image']}"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hotel["place"],
              style: Styles.h2.copyWith(color: Colors.white70),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hotel["destination"],
              style: Styles.h2.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${hotel['price']} €/night",
              style: Styles.h2.copyWith(color: Colors.white70),
            ),
          )
        ],
      ),
    );
  }
}
