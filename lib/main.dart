import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 111, 21, 175),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                height: 300.0,
              ),
              SizedBox(
                height: 60,
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                  onPressed: () {
                    print('ça marche!');
                  },
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
