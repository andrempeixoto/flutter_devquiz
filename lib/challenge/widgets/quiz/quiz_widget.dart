import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  QuizWidget({
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
      child: Container(
        child: Column(
          children: [
            Text(
              question.title,
              style: AppTextStyles.heading,
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  ...question.answers
                      .map(
                        (answer) => AnswerWidget(
                          title: answer.title,
                          isRight: answer.isRight,
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
