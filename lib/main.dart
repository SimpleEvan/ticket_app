import 'package:flutter/material.dart';
import 'package:ticket_app/core/nav_bottom_bar.dart';
import 'package:ticket_app/core/presentation/tickets/ticket_page.dart';
import 'package:ticket_app/core/presentation/tickets/tickets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket App',
      theme: ThemeData(),
      routes: {
        "/": (context) => const NavBottomBar(),
        "/ticket_page": (context) => const TicketPage(),
        "/tickets_page": (context) => const TicketsPage(),
        //"/hotel_page": (context) => const HotelPage(),
      },
    );
  }
}
