import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({
    required this.label,
  }) : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              fontSize: 13,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
