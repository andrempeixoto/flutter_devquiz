import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  AnswerWidget({
    required this.title,
    this.isRight = false,
    this.isSelected = false,
  });

  Color get _selectedColorRight => isRight ? AppColors.darkGreen : AppColors.darkRed;
  Color get _selectedBorderRight => isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedCardColorRight => isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedCardBorderRight => isRight ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                title,
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
    );
  }
}
