import 'package:flutter/widgets.dart';

class CustomPaintWidget extends StatelessWidget {
  final double height;
  final CustomPainter painter;

  const CustomPaintWidget({
    Key? key,
    required this.painter, required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: painter,
      child: SizedBox(
        height: height,
        width: double.infinity,
      ),
    );
  }
}
