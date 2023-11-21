import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

// storing the input of the class in a variable with the type of String and name
// of text, the variable is final, meanig it cannot be changed afte program run.

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
