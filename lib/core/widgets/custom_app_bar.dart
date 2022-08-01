
import 'package:flutter/material.dart';

import '../style/color_palettes.dart';

class CustomAppBar extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var fillPaint = Paint()
      ..color = ColorPalettes.primary
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    var wavePaint = Paint()
      ..color = Colors.blue[900]!.withOpacity(0.1)
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    Path path = Path();
    path.moveTo(200, size.height);
    // path.cubicTo(size.width * 1/4, size.height * 1/4, size.width / 2, size.height / 2, size.width, 0);
    path.cubicTo(size.width * 1/2, size.height * 0.15, size.width - 200, -30, size.width, 0);
    path.lineTo(size.width, size.height);

    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), fillPaint);
    canvas.drawPath(path, wavePaint);
    // canvas.drawPath(path, wavePaint2);

  }
  @override
  bool shouldRepaint(CustomAppBar oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(CustomAppBar oldDelegate) => false;
}