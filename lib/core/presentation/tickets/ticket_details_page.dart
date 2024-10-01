import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/presentation/home/ticket_widget.dart';
import 'package:ticket_app/core/shared/tabs_switch.dart';
import 'package:ticket_app/core/shared/ticket_content_widget.dart';
import 'package:ticket_app/core/shared/ticket_layout_widget.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/media.dart';
import 'package:ticket_app/data/json.dart';

import '../../styles/custom_themes.dart';

class TicketDetailPage extends StatefulWidget {
  const TicketDetailPage({super.key});

  @override
  State<TicketDetailPage> createState() => _TicketDetailPageState();
}

class _TicketDetailPageState extends State<TicketDetailPage> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments;
    if (args != null) {
      args = args as Map;
      ticketIndex = args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const TabsSwitch(leftText: "Upcoming", rightText: "Previous"),
          Styles.smallHeightSpacing,
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketWidget(
                ticket: tickets[ticketIndex],
                theme: CleanTheme(),
              )),
          const SizedBox(
            height: 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketContentWidget(
                        header: "Passenger",
                        value: "John Doe",
                        textColor: Colors.black,
                        alignment: CrossAxisAlignment.start),
                    TicketContentWidget(
                        header: "Passport",
                        value: "PS34HJ89",
                        textColor: Colors.black,
                        alignment: CrossAxisAlignment.end)
                  ],
                ),
                Styles.smallHeightSpacing,
                const TicketLayoutWidget(
                  divider: 15,
                  dividerColor: Colors.grey,
                  width: 5,
                ),
                Styles.smallHeightSpacing,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketContentWidget(
                        header: "Ticket number",
                        value: "123334223",
                        textColor: Colors.black,
                        alignment: CrossAxisAlignment.start),
                    TicketContentWidget(
                        header: "Booking number",
                        value: "B6722HJ3",
                        textColor: Colors.black,
                        alignment: CrossAxisAlignment.end)
                  ],
                ),
                Styles.smallHeightSpacing,
                const TicketLayoutWidget(
                  divider: 15,
                  dividerColor: Colors.grey,
                  width: 5,
                ),
                Styles.smallHeightSpacing,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Media.mastercard,
                              scale: 6,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("***1234")
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment method",
                          style: Styles.h4,
                        )
                      ],
                    ),
                    const TicketContentWidget(
                        header: "Price",
                        value: "100€",
                        textColor: Colors.black,
                        alignment: CrossAxisAlignment.end)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21))),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                    height: 70,
                    width: double.infinity,
                    drawText: false,
                    barcode: Barcode.code128(),
                    data: 'http://developabetterfuture.com'),
              ),
            ),
          ),
          Styles.smallHeightSpacing,
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketWidget(
                ticket: tickets[ticketIndex],
                theme: MoroccanTheme(),
              )),
        ],
      ),
    );
  }
}
