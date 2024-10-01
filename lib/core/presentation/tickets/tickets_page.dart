import 'package:flutter/material.dart';
import 'package:ticket_app/core/infra/routes.dart';
import 'package:ticket_app/core/presentation/home/ticket_widget.dart';
import 'package:ticket_app/core/styles/custom_themes.dart';

import '../../../../data/json.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "All Tickets",
      )),
      body: ListView(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: tickets
                    .map((item) => GestureDetector(
                          onTap: () {
                            var index = tickets.indexOf(item);
                            Navigator.pushNamed(
                                context, Routes.ticketDetailPage,
                                arguments: {"index": index});
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: TicketWidget(
                              ticket: item,
                              theme: MoroccanTheme(),
                              isVerticalLayout: true,
                            ),
                          ),
                        ))
                    .toList(),
              ))
        ],
      ),
    );
  }
}
