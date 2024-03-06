import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDice.png",
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        FilledButton(
          onPressed: rollDice,
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            backgroundColor: Colors.blueAccent,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
