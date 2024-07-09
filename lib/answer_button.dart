import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(4, 37, 1, 57),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
      ),
      onPressed: onTap,
      child: Text(
        answerText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
