import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 83, 10, 125),
                  Color.fromARGB(255, 171, 10, 216)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  height: 300.0,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                    onPressed: () {
                      print('ça marche!');
                    },
                    child: const Text(
                      'Start Quiz',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
