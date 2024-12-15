import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: 800,
        height: 200,
        color: Colors.amberAccent,
      ),
      foregroundPainter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue // Cor da linha
      ..strokeWidth = 5 // Espessura da linha
      ..style =
          PaintingStyle.stroke; // Garantir que só o contorno seja desenhado

    // Calcular o centro da base do componente
    double centerX = size.width / 2;
    double startY = size.height * 0.8; // 80% da altura (20% para cima da base)

    // Ponto inicial
    Offset startPoint = Offset(centerX, startY);

    // Distância para o movimento na diagonal
    double moveDistance = 100; // Distância tanto em X quanto em Y

    // 1. A linha vai primeiro para a direita (para frente)
    // Movimento inicial para a direita
    Offset pointForward = Offset(centerX + moveDistance, startY);

    // Desenhando a linha para a direita
    canvas.drawLine(startPoint, pointForward, paint);

    // 2. Agora a linha vai subir na diagonal (tanto no eixo X quanto no eixo Y)
    // A linha continua a se mover para a direita e para cima ao mesmo tempo
    Offset pointUpRight =
        Offset(centerX + moveDistance * 2, startY - moveDistance);

    // Desenhando a linha na diagonal (direita e para cima)
    canvas.drawLine(pointForward, pointUpRight, paint);

    // Agora, vamos desenhar a linha espelhada (do lado oposto)
    // 3. A segunda linha começa no mesmo ponto, mas vai para a esquerda primeiro
    Offset startPoint2 = Offset(centerX, startY);
    Offset pointBackward =
        Offset(centerX - moveDistance, startY); // Vai para a esquerda

    // Desenhando a linha para a esquerda
    canvas.drawLine(startPoint2, pointBackward, paint);

    // 4. Depois, a linha sobe na diagonal, assim como a primeira
    Offset pointUpLeft =
        Offset(centerX - moveDistance * 2, startY - moveDistance);

    // Desenhando a linha espelhada para cima
    canvas.drawLine(pointBackward, pointUpLeft, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Não há necessidade de repintar, já que o desenho não é dinâmico
  }
}
