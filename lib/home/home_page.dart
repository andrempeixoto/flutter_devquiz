import 'package:DevQuiz/challenge/challenge_page.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LevelButtonWidget(label: "Fácil"),
                    LevelButtonWidget(label: "Médio"),
                    LevelButtonWidget(label: "Difícil"),
                    LevelButtonWidget(label: "Perito"),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  // childAspectRatio: 9 / 10,
                  physics: BouncingScrollPhysics(),
                  children: controller.quizzes!
                      .map(
                        (quiz) => QuizCardWidget(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChallengePage(questions: quiz.questions),
                                ));
                          },
                          title: quiz.title,
                          answered: "${quiz.questionsAnswered} de ${quiz.questions.length}",
                          percent: quiz.questionsAnswered / quiz.questions.length,
                        ),
                      )
                      .toList(),
                  // QuizCardWidget(),
                  // QuizCardWidget(),
                  // QuizCardWidget(),
                  // QuizCardWidget(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Container(
            height: 60,
            width: 60,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(AppColors.darkGreen),
            ),
          ),
        ),
      );
    }
  }
}
