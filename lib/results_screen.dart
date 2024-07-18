import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40.0),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(
              height: 30,
            ),
            Text('List of answers and questions...'),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: null,
              child: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
