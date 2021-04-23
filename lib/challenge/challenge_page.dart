import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NextButtonWidget.white("Pular"),
              NextButtonWidget.darkGreen("Confirmar"),
            ],
          ),
        ),
      ),
    );
  }
}
