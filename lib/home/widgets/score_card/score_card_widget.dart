import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(
                  percent: .7,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vamos começar', style: AppTextStyles.heading),
                      SizedBox(height: 8),
                      Text('Complete os desafios e avance em conhecimento',
                          style: AppTextStyles.body),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
