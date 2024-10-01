import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/infra/routes.dart';
import 'package:ticket_app/core/presentation/home/hotel_widget.dart';
import 'package:ticket_app/core/presentation/home/ticket_widget.dart';
import 'package:ticket_app/core/shared/label_text_link_widget.dart';
import 'package:ticket_app/core/styles/custom_themes.dart';

import '../../../data/json.dart';
import '../../styles/app_styles.dart';
import '../../styles/media.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Color setBackgroundColor(int index) {
    if (index % 2 == 0) {
      return const Color(0xfcBC242C).withOpacity(0.75);
    }
    return const Color(0xfc015E32).withOpacity(0.75);
  }

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.accountPage);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(Media.logo))),
                      ),
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
                  route: Routes.ticketsPage,
                ),
                Styles.smallHeightSpacing,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: tickets
                          .map((item) => TicketWidget(
                                ticket: item,
                                theme: MoroccanTheme(),
                              ))
                          .toList(),
                    )),
                Styles.defaultHeightSpacing,
                const CustomLabelTextLink(
                  label: 'Places',
                  linkText: 'View all',
                  route: Routes.hotelsPage,
                ),
                Styles.smallHeightSpacing,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotels
                          .map((hotel) => HotelWidget(
                              hotel: hotel,
                              backgroundColor:
                                  setBackgroundColor(hotels.indexOf(hotel))))
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
