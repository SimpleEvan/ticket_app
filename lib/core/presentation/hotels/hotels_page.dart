import 'package:flutter/material.dart';
import 'package:ticket_app/core/infra/routes.dart';
import 'package:ticket_app/core/presentation/home/hotel_widget.dart';
import 'package:ticket_app/data/json.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Morocco",
      )),
      body: Container(
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1),
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            var hotel = hotels[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.hotelDetailPage,
                    arguments: {"index": index});
              },
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: HotelWidget(
                      hotel: hotel, backgroundColor: Colors.lightBlue)),
            );
          },
        ),
      ),
    );
  }
}
