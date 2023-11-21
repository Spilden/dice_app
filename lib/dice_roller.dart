import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),

        // empty widget to create 20px air between picture and button
        const SizedBox(height: 20),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            textStyle: const TextStyle(
              fontSize: 23,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
