import 'package:flutter/material.dart';

class PhaseUri extends StatelessWidget {
  const PhaseUri({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "“Apaixone-se pelo problema, não pela solução.”",
          style: TextStyle(
            color: Color(0xFFB0BEC5),
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "- Uri Levine",
            style: TextStyle(
              color: Color(0xFFB0BEC5),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
