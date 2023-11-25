import 'package:flutter/material.dart';
import 'package:super_ticket_package/Design/dotted_initial_path.dart';
import 'package:super_ticket_package/Design/dotted_middle_path.dart';
import 'package:super_ticket_package/Design/side_cut_design.dart';
import 'package:super_ticket_package/widgets/custom_paint_widget.dart';

class SuperTicket extends StatelessWidget {
  final int itemCount;
  final Color arcColor;
  final String ticketText;
  final String ticketTitleText;
  final List<Color> colors;
  final List<String> imageList; // Yeni parametre: resim URL listesi
  final TextStyle ticketTextStyle;
  final TextStyle ticketTitleTextStyle;

  const SuperTicket({
    Key? key,
    required this.itemCount,
    required this.arcColor,
    required this.ticketText,
    required this.ticketTitleText,
    required this.colors,
    required this.imageList, // Yeni parametre: resim URL listesi
    this.ticketTextStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.ticketTitleTextStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        Color color = colors[index % colors.length];
        String imageUrl =
            imageList[index % imageList.length]; // Resim URL'sini al
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: color,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text('$ticketText #${index + 1}',
                              style: ticketTextStyle),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$ticketTitleText #${index + 1}',
                              style: ticketTitleTextStyle,
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                            Expanded(
                              child: Row(children: [
                                Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Icon(Icons.calendar_today),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              child: Text(
                                                '00 month 2023 00:00',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Destination venue',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton.icon(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: const StadiumBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Colors.blue),
                                                )),
                                            icon:
                                                const Icon(Icons.check_circle),
                                            label: Text(
                                              'Buy Tickets'.toUpperCase(),
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ))
                                      ]),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              CustomPaintWidget(
                painter: SideCutsDesign(arcColor: arcColor),
              ),
              CustomPaintWidget(
                painter: DottedInitialPath(dotColor: arcColor),
              ),
              CustomPaintWidget(
                painter: DottedMiddlePath(dotColor: arcColor),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
      itemCount: itemCount,
    );
  }
}
