

import 'package:flutter/material.dart';
import 'package:super_ticket_package/Design/dotted_initial_path.dart';
import 'package:super_ticket_package/Design/dotted_middle_path.dart';
import 'package:super_ticket_package/Design/side_cut_design.dart';

class CombinedDotPainter extends CustomPainter {
  final Color dotColor;

  CombinedDotPainter({required this.dotColor});

  @override
  void paint(Canvas canvas, Size size) {
    // SideCutsDesign
    final sideCutsDesignPainter = SideCutsDesign(arcColor: dotColor);
    sideCutsDesignPainter.paint(canvas, size);

    // DottedInitialPath
    final dottedInitialPathPainter = DottedInitialPath(dotColor: dotColor);
    dottedInitialPathPainter.paint(canvas, size);

    // DottedMiddlePath
    final dottedMiddlePathPainter = DottedMiddlePath(dotColor: dotColor);
    dottedMiddlePathPainter.paint(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
