import 'package:flutter/material.dart';
import 'package:ticket_app/core/infra/routes.dart';
import 'package:ticket_app/core/nav_bottom_bar.dart';
import 'package:ticket_app/core/presentation/account/account_page.dart';
import 'package:ticket_app/core/presentation/hotels/hotel_detail_page.dart';
import 'package:ticket_app/core/presentation/hotels/hotels_page.dart';
import 'package:ticket_app/core/presentation/tickets/ticket_details_page.dart';
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
        Routes.homePage: (context) => const NavBottomBar(),
        Routes.ticketDetailPage: (context) => const TicketDetailPage(),
        Routes.ticketsPage: (context) => const TicketsPage(),
        Routes.hotelsPage: (context) => const HotelsPage(),
        Routes.hotelDetailPage: (context) => const HotelDetailPage(),
        Routes.accountPage: (context) => const AccountPage(),
      },
    );
  }
}
