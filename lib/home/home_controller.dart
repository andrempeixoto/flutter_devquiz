import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Andre",
      photoUrl: 'https://avatars.githubusercontent.com/u/35813862?v=4',
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(title: "Está curtindo o Flutter?", answers: [
            AnswerModel(title: "Estou curtindo"),
            AnswerModel(title: "Estou amando"),
            AnswerModel(title: "Show de bola"),
            AnswerModel(title: "Muito top", isRight: true),
          ])
        ],
        image: AppImages.blocks,
        level: Level.facil,
      ),
      QuizModel(
        title: "NLW 6 Flutter",
        questions: [
          QuestionModel(title: "Está curtindo o Flutter?", answers: [
            AnswerModel(title: "Estou curtindo"),
            AnswerModel(title: "Estou amando"),
            AnswerModel(title: "Show de bola"),
            AnswerModel(title: "Muito top", isRight: true),
          ])
        ],
        image: AppImages.blocks,
        level: Level.facil,
      )
    ];

    state = HomeState.success;
  }
}
