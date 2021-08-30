import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(TestOverlay());
}

class TestOverlay extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: Painter(),
    );
  }
}

class Painter extends CustomPainter {
  
  final _paint = Paint()..color = Colors.red .. strokeWidth = 1.0 ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCenter(
      center: Offset(100, 100),
      width: 50,
      height: 80,
    );

    canvas.drawRect(rect, _paint);

    canvas.drawCircle(Offset(100, 250), 50, _paint);

    canvas.drawLine(Offset(200, 100), Offset(250, 50), _paint);

    canvas.drawOval(Rect.fromCenter(
      center: Offset(300, 100),
      width: 50,
      height: 80,
    ), _paint);

    var style = TextStyle(color: Colors.red, );
    final paragraphBuilder = ParagraphBuilder(
      ParagraphStyle(
        textAlign: TextAlign.start,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    )..pushStyle(style.getTextStyle())..addText('Test');

    canvas.drawParagraph(paragraphBuilder.build()..layout(ParagraphConstraints(width: size.width)), Offset(350, 350));

    canvas.drawArc(Rect.fromCenter(
      center: Offset(500, 200),
      width: 50,
      height: 80,
    ), 10.0, 20.0, true, _paint);

    final path = Path()
      ..moveTo(500, 500)
      ..lineTo(600, 600)
      ..lineTo(500, 600)
      ..lineTo(600, 500);
      
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}