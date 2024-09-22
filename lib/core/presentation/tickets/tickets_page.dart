import 'package:flutter/material.dart';
import 'package:ticket_app/core/presentation/home/ticket_widget.dart';

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
                    .map((item) => Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TicketWidget(
                            ticket: item,
                            isVerticalLayout: true,
                          ),
                        ))
                    .toList(),
              ))
        ],
      ),
    );
  }
}
