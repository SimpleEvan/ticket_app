import 'package:flutter/material.dart';
import 'package:ticket_app/core/nav_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket App',
      theme: ThemeData(),
      home: NavBottomBar(),
    );
  }
}
