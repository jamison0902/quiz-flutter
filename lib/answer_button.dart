import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 60),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
