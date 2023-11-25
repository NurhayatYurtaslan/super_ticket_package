// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:super_ticket_package/super_ticket_package_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

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
        itemCount: 3, // 3 resim
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
        mainWidget: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Material(
                  elevation: 2,
                  child: Container(
                    color: Colors.grey,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final imageUrls = [
                          'https://picsum.photos/200/300?random=1',
                          'https://picsum.photos/200/300?random=2',
                          'https://picsum.photos/200/300?random=3',
                        ];
                        return Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        );
                      },
                      itemCount: 3, // Resim sayısı
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
