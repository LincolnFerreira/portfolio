import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(),
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [],
        )
      ],
    );
  }
}
