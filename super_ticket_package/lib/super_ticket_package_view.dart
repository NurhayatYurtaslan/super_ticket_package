import 'package:flutter/material.dart';
import 'package:super_ticket_package/Design/dotted_initial_path.dart';
import 'package:super_ticket_package/Design/dotted_middle_path.dart';
import 'package:super_ticket_package/Design/side_cut_design.dart';
import 'package:super_ticket_package/widgets/custom_paint_widget.dart';

class SuperTicket extends StatelessWidget {
  final int itemCount;
  final Color arcColor;
  final String ticketText;
  final String firstIconsText;
  final String secondIconsText;
  final String ticketTitleText;
  final String buttonText;
  final List<Color> colors;
  final double ticketHeight;
  final IconData firstIcon;
  final IconData secondIcon;
  final IconData buttonIcon;
  final TextStyle ticketTextStyle;
  final TextStyle ticketTitleTextStyle;
  final TextStyle firstIconsTextStyle;
  final TextStyle secondIconsTextStyle;
  final TextStyle buttonTextStyle;
  final VoidCallback onPressed;
  final Color buttonBg;
  final Color buttonBorderColor;
  final Color buttonIconColor;
  final Color firstIconColor;
  final Color secondIconColor;

  const SuperTicket({
    Key? key,
    required this.itemCount,
    required this.arcColor,
    required this.ticketText,
    required this.ticketTitleText,
    required this.buttonText,
    required this.firstIcon,
    required this.secondIcon,
    required this.buttonIcon,
    required this.firstIconsText,
    required this.secondIconsText,
    required this.onPressed,
    required this.colors,
    required this.buttonBorderColor,
    this.buttonIconColor = Colors.white,
    this.firstIconColor = Colors.black,
    this.secondIconColor = Colors.black,
    this.ticketHeight = 175,
    this.buttonTextStyle = const TextStyle(fontSize: 12, color: Colors.white),
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
    this.firstIconsTextStyle = const TextStyle(
      fontSize: 12,
    ),
    this.secondIconsTextStyle = const TextStyle(
      fontSize: 12,
    ),
    required this.buttonBg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        Color color = colors[index % colors.length];
        return SizedBox(
          //ticket's height
          height: ticketHeight,
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
                                        Row(
                                          children: [
                                            Icon(
                                              firstIcon,
                                              color: firstIconColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              child: Text(firstIconsText,
                                                  style: firstIconsTextStyle),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              secondIcon,
                                              color: secondIconColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              child: Text(
                                                secondIconsText,
                                                style: secondIconsTextStyle,
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
                                                backgroundColor: buttonBg,
                                                shape: StadiumBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: buttonBorderColor),
                                                )),
                                            icon: Icon(buttonIcon,
                                                color: buttonIconColor),
                                            label: Text(
                                              buttonText,
                                              style: buttonTextStyle,
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
                height: ticketHeight,
              ),
              CustomPaintWidget(
                painter: DottedInitialPath(
                  dotColor: arcColor,
                ),
                height: ticketHeight,
              ),
              CustomPaintWidget(
                painter: DottedMiddlePath(
                  dotColor: arcColor,
                ),
                height: ticketHeight,
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
