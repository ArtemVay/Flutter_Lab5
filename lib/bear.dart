import 'package:flutter/material.dart';

class BearCard extends StatelessWidget {
  final String imagePath;

  const BearCard(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, width: 300);
  }
}
