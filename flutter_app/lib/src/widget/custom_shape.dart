import 'package:flutter/material.dart';

class MyPainter extends CustomPainter { 
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas.drawCircle(Offset(75, 75), 50, myPaint);
    canvas.drawLine(Offset.zero, Offset(20, 20), myPaint);
    canvas.drawRect(Rect.fromPoints(Offset.zero, Offset(50, 50)), myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}

class CustomShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
    );
  }
}