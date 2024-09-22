import 'package:flutter/material.dart';
import 'package:ticket_app/core/shared/button_widget.dart';
import 'package:ticket_app/core/shared/input_widget.dart';
import 'package:ticket_app/core/shared/label_text_link_widget.dart';
import 'package:ticket_app/core/shared/tabs_switch.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/media.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Styles.defaultHeightSpacing,
          Text(
            "What are\n you looking for?",
            style: Styles.h1,
          ),
          Styles.smallHeightSpacing,
          const TabsSwitch(),
          Styles.smallHeightSpacing,
          const InputWidget(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          Styles.smallHeightSpacing,
          const InputWidget(
            text: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          Styles.smallHeightSpacing,
          const ButtonWidget(),
          Styles.defaultHeightSpacing,
          const CustomLabelTextLink(
            label: "Upcoming flights",
            linkText: "View all",
            route: "/ticket_page",
          ),
          Styles.smallHeightSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: 440,
                width: size.width * .42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 1,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(Media.hotel))),
                    ),
                    Styles.smallHeightSpacing,
                    Text(
                      "There are many of passages of Lorem Ipsum",
                      style: Styles.h3,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        height: 210,
                        width: size.width * .44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.blueAccent.shade100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem \n is simply",
                              style: Styles.h2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Styles.smallHeightSpacing,
                            Text(
                              "Lorem Ipsum \n has been  If you are going to use a passage of Lorem",
                              style: Styles.h3.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                  Styles.smallHeightSpacing,
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    width: size.width * 0.44,
                    height: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.deepOrangeAccent.shade100),
                    child: Column(
                      children: [
                        Text(
                          "Lorem Ipsum",
                          style: Styles.h2.copyWith(color: Colors.white),
                        ),
                        Styles.smallHeightSpacing,
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Media.hotel))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
