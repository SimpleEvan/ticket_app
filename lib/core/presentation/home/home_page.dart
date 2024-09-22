import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/presentation/home/hotel_widget.dart';
import 'package:ticket_app/core/presentation/home/ticket_widget.dart';
import 'package:ticket_app/core/shared/label_text_link_widget.dart';

import '../../../data/json.dart';
import '../../styles/app_styles.dart';
import '../../styles/media.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Styles.defaultHeightSpacing,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to Morocco",
                          style: Styles.h3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Buy Tickets",
                          style: Styles.h1,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(Media.logo))),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.blueGrey,
                      ),
                      Text("Search")
                    ],
                  ),
                ),
                Styles.defaultHeightSpacing,
                const CustomLabelTextLink(
                  label: 'Upcoming Flights',
                  linkText: 'View all',
                  route: "/tickets_page",
                ),
                Styles.smallHeightSpacing,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: tickets
                          .map((item) => TicketWidget(
                                ticket: item,
                              ))
                          .toList(),
                    )),
                Styles.defaultHeightSpacing,
                const CustomLabelTextLink(
                  label: 'Hotels',
                  linkText: 'View all',
                  route: "/hotel_page",
                ),
                Styles.smallHeightSpacing,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotels
                          .map((hotel) => HotelPage(hotel: hotel))
                          .toList(),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
