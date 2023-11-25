import 'package:flutter/material.dart';

class SideCutsDesign extends CustomPainter {
  final Color arcColor;

  SideCutsDesign({required this.arcColor});

  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, h / 2), radius: 18),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(w, h / 2), radius: 18),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(w / 5, h), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(w / 5, 0), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, h), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
    canvas.drawArc(
      Rect.fromCircle(center: const Offset(0, 0), radius: 7),
      0,
      10,
      false,
      Paint()
        ..style = PaintingStyle.fill
        ..color = arcColor,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}