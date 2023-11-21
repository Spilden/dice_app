import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

// const må kjøre idet programmet compiles, final er det samme men kan kjøres
// på et seinere tidspunkt
const beginAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.topCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.colorBottom, required this.colorTop, super.key});

  final Color colorBottom;
  final Color colorTop;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: [
            colorBottom,
            colorTop,
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
