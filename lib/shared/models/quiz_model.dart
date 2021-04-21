import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
<<<<<<< HEAD
    this.questionsAnswered = 0,
    required this.image,
    required this.level,
=======
>>>>>>> 2a63a7089f63e018aa379661eb981fceb410a4c3
  });
}
