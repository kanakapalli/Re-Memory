import 'dart:ui';

import 'package:flutter/material.dart';

class DottedBorderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('Container tapped');
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Blurred container with dotted border
            Container(
              width: 200,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3), // Semi-transparent blur effect
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: CustomPaint(
                    painter: DottedBorderPainter(),
                    child: Container(),
                  ),
                ),
              ),
            ),
            // Centered plus icon
            Icon(
              Icons.add,
              color: Colors.grey.shade700,
              size: 48,
            ),
          ],
        ),
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double gap = 10; // Gap between dots
    double strokeWidth = 10; // Stroke width
    Paint paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Calculate the total length of each side
    double length = size.width;

    // Draw top border
    for (double i = 0; i < length; i += gap * 2) {
      canvas.drawCircle(Offset(i, 0), strokeWidth / 2, paint);
    }

    // Draw bottom border
    for (double i = 0; i < length; i += gap * 2) {
      canvas.drawCircle(Offset(i, size.height), strokeWidth / 2, paint);
    }

    // Draw left border
    for (double i = 0; i < size.height; i += gap * 2) {
      canvas.drawCircle(Offset(0, i), strokeWidth / 2, paint);
    }

    // Draw right border
    for (double i = 0; i < size.height; i += gap * 2) {
      canvas.drawCircle(Offset(size.width, i), strokeWidth / 2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
