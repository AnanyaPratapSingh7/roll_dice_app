import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';

  void rollDice() {
    final num = Random().nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(diceImage, width: 200),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
