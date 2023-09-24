import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color clr;

  RPSCustomPainter(this.clr);
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0008000, size.height * -0.0076000);
    path_0.lineTo(size.width * 0.9991900, size.height * -0.0049178);
    path_0.lineTo(size.width * 1.0024100, size.height * 0.6870018);
    path_0.quadraticBezierTo(size.width * 1.0034200, size.height * 0.9943689,
        size.width * 0.8581100, size.height * 0.9980264);
    path_0.quadraticBezierTo(size.width * 0.7701200, size.height * 0.9986693,
        size.width * 0.6184200, size.height * 1.0029475);
    path_0.quadraticBezierTo(size.width * 0.4740500, size.height * 1.0144965,
        size.width * 0.4715300, size.height * 0.8287152);
    path_0.quadraticBezierTo(size.width * 0.4714300, size.height * 0.7970164,
        size.width * 0.4700800, size.height * 0.7469191);
    path_0.quadraticBezierTo(size.width * 0.4769000, size.height * 0.5090232,
        size.width * 0.3938800, size.height * 0.5041908);
    path_0.quadraticBezierTo(size.width * 0.3204500, size.height * 0.5041908,
        size.width * 0.1192941, size.height * 0.4964767);
    path_0.quadraticBezierTo(size.width * 0.0016799, size.height * 0.5007614,
        size.width * 0.0012693, size.height * 0.2333487);
    path_0.quadraticBezierTo(size.width * 0.0011520, size.height * 0.1731115,
        size.width * 0.0008000, size.height * -0.0076000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = clr
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
