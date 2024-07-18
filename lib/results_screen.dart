import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions of $numTotalQuestions correctly!',
            ),
            SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                // TODO: Implement restart quiz logic
              },
              child: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
