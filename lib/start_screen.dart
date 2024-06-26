import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 300.0,
            color: Colors.white30,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 238, 197, 246), fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                print('ça marche!');
              },
              child: const Text(
                'Start Quiz',
              ))
        ],
      ),
    );
  }
}
