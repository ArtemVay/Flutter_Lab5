import 'package:flutter/material.dart';

import 'dart:math';

import 'bear.dart';

final randomizer = Random();

class BearRoller extends StatefulWidget {
  const BearRoller({super.key});

  @override
  State<BearRoller> createState() {
    return _BearRollerState();
  }
}

class _BearRollerState extends State<BearRoller> {
  var currentBearRoll = 1;

  void rollBear() {
    setState(() {
      currentBearRoll = randomizer.nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BearCard(
          'assets/images/bear-$currentBearRoll.jpg',
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: rollBear,
          style: TextButton.styleFrom(
            foregroundColor: Colors.lime,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text("Новый мишка"),
        ),
      ],
    );
  }
}
