import 'package:flutter/material.dart';
import 'package:ticket_app/core/shared/circle_icon.dart';
import 'package:ticket_app/core/shared/cutout_widget.dart';
import 'package:ticket_app/core/shared/ticket_content_widget.dart';
import 'package:ticket_app/core/shared/ticket_layout_widget.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/custom_themes.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isVerticalLayout;
  final CustomTheme theme;
  const TicketWidget(
      {super.key,
      required this.ticket,
      required this.theme,
      this.isVerticalLayout = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: isVerticalLayout == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: theme.bgColor1,
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
                        style: Styles.h3.copyWith(color: theme.textColor1),
                      ),
                      Expanded(child: Container()),
                      CircleIcon(circleColor: theme.textColor2),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: TicketLayoutWidget(
                              divider: 6,
                              dividerColor: theme.textColor2,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: theme.textColor1,
                                )),
                          )
                        ],
                      )),
                      CircleIcon(circleColor: theme.textColor2),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.h3.copyWith(color: theme.textColor1),
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
                        style: Styles.h4.copyWith(color: theme.textColor1),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["flight_duration"],
                        style: Styles.h4.copyWith(color: theme.textColor1),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["name"],
                        style: Styles.h4.copyWith(color: theme.textColor1),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: theme.bgColor2,
              height: 20,
              child: Row(
                children: [
                  TicketCutoutWidget(
                    direction: "left",
                    cutOffColor: theme.textColor2,
                  ),
                  Expanded(
                      child: TicketLayoutWidget(
                    divider: 18,
                    dividerColor: theme.textColor2,
                    width: 8,
                  )),
                  TicketCutoutWidget(
                    direction: "right",
                    cutOffColor: theme.textColor2,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: theme.bgColor2,
                  borderRadius: BorderRadius.only(
                      // make border 0
                      bottomLeft: Radius.circular(theme.borderRadius),
                      bottomRight: Radius.circular(theme.borderRadius))),
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
                          textColor: theme.textColor1,
                          alignment: CrossAxisAlignment.start),
                      TicketContentWidget(
                          header: "Departure time",
                          value: ticket["departure_time"],
                          textColor: theme.textColor1,
                          alignment: CrossAxisAlignment.center),
                      TicketContentWidget(
                          header: "Number",
                          value: ticket["flight_number"],
                          textColor: theme.textColor1,
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
