import 'package:cylinder_bar_chart/src/components/ellipse_painter.dart';
import 'package:flutter/material.dart';

class CylinderBar extends StatelessWidget {
  final double value, maxValue;
  final double height;
  final Color mainColor;
  final Color accentColor;

  const CylinderBar({
    super.key,
    this.height = 200,
    required this.value,
    required this.maxValue,
    required this.mainColor,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "${value.toStringAsFixed(2)} / ${maxValue.toStringAsFixed(2)}",
      child: SizedBox(
        height: height,
        width: 50,
        child: Stack(
          children: [
            Positioned(
              top: 5,
              bottom: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffE5F1FF),
                ),
                width: 50,
              ),
            ),
            Positioned(
              child: CustomPaint(
                painter: EllipsePainter(const Color(0xffD4E8FE)),
                size: const Size(50, 20),
              ),
            ),
            Positioned(
              bottom: 0,
              child: CustomPaint(
                painter: EllipsePainter(const Color(0xffE5F1FF)),
                size: const Size(50, 20),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: (value / maxValue) * height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      bottom: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: mainColor,
                        ),
                        width: 50,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: CustomPaint(
                        painter: EllipsePainter(mainColor),
                        size: const Size(50, 20),
                      ),
                    ),
                    Positioned(
                      child: CustomPaint(
                        painter: EllipsePainter(accentColor),
                        size: const Size(50, 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
