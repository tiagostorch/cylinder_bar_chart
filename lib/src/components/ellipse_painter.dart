import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  final Color? color;

  EllipsePainter(this.color);
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final paint = Paint()
      ..color = color ?? Colors.blue
      ..style = PaintingStyle.fill;

    // Calculate the center point of the canvas
    final center = Offset(size.width / 2, size.height / 2);

    // Calculate the radius of the ellipse
    final radiusX = size.width;
    final radiusY = size.height;

    // Create a path for the ellipse
    final path = Path()
      ..addOval(
          Rect.fromCenter(center: center, width: radiusX, height: radiusY));

    // Draw the ellipse on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}