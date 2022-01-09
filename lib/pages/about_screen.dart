import 'package:flutter/material.dart';
import 'dart:math' as math;

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    List<Color> items = List<Color>.generate(
        50,
        (index) => Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0));

    return ListView.builder(
      itemCount: 50,
      itemBuilder: (_, index) {
        return Container(
          color: items[index],
          height: 500,
        );
      },
    );
  }
}
