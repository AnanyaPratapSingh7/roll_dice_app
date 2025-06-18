import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.yellow],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(child: DiceRoller()),
        ),
      ),
    ),
  );
}
