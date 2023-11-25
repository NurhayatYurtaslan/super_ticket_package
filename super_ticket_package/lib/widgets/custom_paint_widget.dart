import 'package:flutter/widgets.dart';

class CustomPaintWidget extends StatelessWidget {
  final CustomPainter painter;

  const CustomPaintWidget({
    Key? key,
    required this.painter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: painter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
      ),
    );
  }
}
