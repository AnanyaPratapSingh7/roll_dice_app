import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';
  int diceNum = 1;

  void rollDice() {
    diceNum = randomizer.nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$diceNum.png';
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
