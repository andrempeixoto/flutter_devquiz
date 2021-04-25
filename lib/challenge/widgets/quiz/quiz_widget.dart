import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;

  QuizWidget({
    required this.question,
  });

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnswerModel answers(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
      child: Container(
        child: Column(
          children: [
            Text(
              widget.question.title,
              style: AppTextStyles.heading,
            ),
            SizedBox(height: 24),
            for (var i = 0; i < widget.question.answers.length; i++)
              AnswerWidget(
                answer: answers(i),
                isSelected: indexSelected == i,
                disabled: indexSelected != -1,
                onTap: () {
                  indexSelected = i;
                },
              ),
          ],
        ),
      ),
    );
  }
}
