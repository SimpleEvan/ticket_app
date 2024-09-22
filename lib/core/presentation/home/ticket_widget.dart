import 'package:flutter/material.dart';
import 'package:ticket_app/core/shared/circle_icon.dart';
import 'package:ticket_app/core/shared/cutout_widget.dart';
import 'package:ticket_app/core/shared/ticket_content_widget.dart';
import 'package:ticket_app/core/shared/ticket_layout_widget.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isVerticalLayout;
  const TicketWidget(
      {super.key, required this.ticket, this.isVerticalLayout = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin: EdgeInsets.only(right: isVerticalLayout == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Styles.ticketUpperColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: Styles.h3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const CircleIcon(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: TicketLayoutWidget(
                              divider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const CircleIcon(),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.h3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        ticket["from"]["name"],
                        style: Styles.h4.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["flight_duration"],
                        style: Styles.h4.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["name"],
                        style: Styles.h4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Styles.ticketBottomColor,
              height: 20,
              child: const Row(
                children: [
                  TicketCutoutWidget(
                    direction: "left",
                  ),
                  Expanded(
                      child: TicketLayoutWidget(
                    divider: 18,
                    width: 8,
                  )),
                  TicketCutoutWidget(direction: "right")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Styles.ticketBottomColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketContentWidget(
                          header: "Date",
                          value: ticket["date"],
                          alignment: CrossAxisAlignment.start),
                      TicketContentWidget(
                          header: "Departure time",
                          value: ticket["departure_time"],
                          alignment: CrossAxisAlignment.center),
                      TicketContentWidget(
                          header: "Number",
                          value: ticket["flight_number"],
                          alignment: CrossAxisAlignment.end)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
