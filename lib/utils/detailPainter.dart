import 'package:flutter/cupertino.dart';

class DetailPainter extends CustomPainter {
  final Color color;

  DetailPainter(this.color);
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
    path_0.moveTo(size.width * 0.1960000, size.height * 0.0833333);
    path_0.lineTo(size.width * 0.1960000, size.height * 0.0833333);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3537299, size.height * -0.0003173);
    path_1.quadraticBezierTo(size.width * 0.3970966, size.height * 0.0010641,
        size.width * 0.4017000, size.height * 0.0419177);
    path_1.lineTo(size.width * 0.5034076, size.height * 0.0417038);
    path_1.lineTo(size.width * 0.6022200, size.height * 0.0418322);
    path_1.quadraticBezierTo(size.width * 0.6057580, size.height * 0.0027255,
        size.width * 0.6500020, size.height * 0.0016801);
    path_1.cubicTo(
        size.width * 0.7132973,
        size.height * 0.0016801,
        size.width * 0.8184302,
        size.height * 0.0016801,
        size.width * 0.8817255,
        size.height * 0.0016801);
    path_1.quadraticBezierTo(size.width * 1.0056339, size.height * 0.0010454,
        size.width * 1.0020492, size.height * 0.0950189);
    path_1.lineTo(size.width * 1.0045560, size.height * 0.4683738);
    path_1.lineTo(size.width * 1.0024200, size.height * 0.9991115);
    path_1.quadraticBezierTo(size.width * 0.9948000, size.height * 0.9398206,
        size.width * 0.8749400, size.height * 0.9369288);
    path_1.cubicTo(
        size.width * 0.6869400,
        size.height * 0.9369288,
        size.width * 0.3152012,
        size.height * 0.9369343,
        size.width * 0.1271954,
        size.height * 0.9369343);
    path_1.quadraticBezierTo(size.width * -0.0006736, size.height * 0.9335741,
        size.width * 0.0018582, size.height * 0.8435955);
    path_1.lineTo(size.width * 0.0018582, size.height * 0.0950189);
    path_1.quadraticBezierTo(size.width * -0.0024785, size.height * -0.0035468,
        size.width * 0.1273709, size.height * -0.0004480);
    path_1.cubicTo(
        size.width * 0.1906662,
        size.height * -0.0009147,
        size.width * 0.1718907,
        size.height * -0.0004107,
        size.width * 0.3537299,
        size.height * -0.0003173);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
