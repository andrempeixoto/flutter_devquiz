import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String answered;
  final double percent;
  final VoidCallback onTap;

  QuizCardWidget({
    required this.title,
    required this.answered,
    required this.percent,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 32,
              width: 32,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(height: 16),
            Text(title, style: AppTextStyles.heading15),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    answered,
                    style: AppTextStyles.body,
                  ),
                ),
                Expanded(
                  child: ProgressIndicatorWidget(value: percent),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
