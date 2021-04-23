import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Olá, ',
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(text: user.name, style: AppTextStyles.titleBold),
                          ],
                        ),
                        // style: TextStyle(shadows: [
                        //   Shadow(color: Color(0xFF57B6E5), offset: Offset.zero, blurRadius: 2)
                        // ]),
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: AppColors.purple, spreadRadius: 2, blurRadius: 2)
                          ],
                          image: DecorationImage(
                            image: NetworkImage(user.photoUrl),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.20),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}
