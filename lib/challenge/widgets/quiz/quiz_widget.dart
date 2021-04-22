import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView(
              children: [
                AnswerWidget(
                    isSelected: true,
                    isRight: true,
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerWidget(
                    isSelected: true,
                    isRight: false,
                    title: "Possibilita a criação de aplicativos compilados nativamente"),
                AnswerWidget(title: "Kit de desenvolvimento de interface de usuário"),
                AnswerWidget(title: "Possibilita a criação de aplicativos compilados nativamente"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
