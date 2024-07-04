import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questions[0].text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            questions[0].answers[0],
            style: const TextStyle(color: Colors.white),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            questions[0].answers[1],
            style: const TextStyle(color: Colors.white),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            questions[0].answers[2],
            style: const TextStyle(color: Colors.white),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            questions[0].answers[3],
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
