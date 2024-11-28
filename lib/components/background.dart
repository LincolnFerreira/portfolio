import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget body;

  const BackgroundWidget({required this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background painter
        CustomPaint(
          size: MediaQuery.of(context).size,
          painter: BackgroundPainter(),
        ),
        // Body content
        body,
      ],
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = Colors.purple.withOpacity(0.5);

    // Drawing blurred circles
    paint.maskFilter = MaskFilter.blur(BlurStyle.normal, 25);

    // Example circles (you can position them dynamically)
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.2), 60, paint);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.5), 90, paint);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.8), 70, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
