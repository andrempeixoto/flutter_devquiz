import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelExtString on String {
  static Level fromMap(String key) => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito,
      }[key]!;
}

extension LevelExt on Level {
  static String toMap(String key) => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito"
      }[key]!;
}

class QuizModel {
  final String title;
  final String image;
  final Level level;
  final List<QuestionModel> questions;
  final int questionsAnswered;

  QuizModel({
    required this.title,
    required this.image,
    required this.level,
    required this.questions,
    this.questionsAnswered = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'level': LevelExt.toMap,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionsAnswered': questionsAnswered,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      image: map['image'],
      level: LevelExtString.fromMap(map['level']),
      questions: List<QuestionModel>.from(map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionsAnswered: map['questionsAnswered'],
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));
}
