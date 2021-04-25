import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final bool isSelected;
  final bool disabled;
  final VoidCallback onTap;

  AnswerWidget({
    required this.answer,
    this.isSelected = false,
    required this.onTap,
    this.disabled = false,
  });

  Color get _selectedColorRight => answer.isRight ? AppColors.darkGreen : AppColors.darkRed;
  Color get _selectedBorderRight => answer.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedCardColorRight => answer.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedCardBorderRight => answer.isRight ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? _selectedCardColorRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: isSelected ? _selectedCardBorderRight : AppColors.border),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    answer.title,
                    style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? _selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(color: isSelected ? _selectedBorderRight : AppColors.border),
                  ),
                  // child: Image.asset(isSelected && isRight ? (AppImages.check) : AppImages.check))
                  child: isSelected
                      ? Icon(
                          _selectedIconRight,
                          color: AppColors.white,
                          size: 16,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
