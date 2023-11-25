// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:super_ticket_package/super_ticket_package_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 133, 74, 217),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 84, 166),
        title: const Text(
          'Super Tickets Package',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SuperTicket(
        itemCount: 4, // 3 resim
        arcColor: const Color.fromARGB(255, 133, 74, 217),
        ticketText: 'Ticket Text',
        colors: [
          const Color.fromARGB(255, 227, 127, 221),
          const Color.fromARGB(255, 242, 226, 5),
          const Color.fromARGB(255, 242, 213, 229),
        ],
        ticketTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 70, 84, 166),
        ),
        ticketTitleText: 'Ticket Title',
        firstIcon: Icons.access_alarm_outlined,
        firstIconsText: "First Icon's Text",
        ticketHeight: MediaQuery.of(context).size.height * 0.25,
        secondIcon: Icons.location_on_outlined,
        secondIconsText: "Second Icon's Text ", onPressed: () {},
        buttonBg: const Color.fromARGB(255, 227, 127, 221),
        buttonBorderColor: const Color.fromARGB(255, 133, 74, 217),
        buttonText: 'Button Text'.toUpperCase(), buttonIcon: Icons.check_circle,
      ),
    );
  }
}
