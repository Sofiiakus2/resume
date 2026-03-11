import 'package:cv_portfolio/core/constants/changeble_personal_data.dart';
import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnglishLevel extends StatelessWidget {
  final TextTheme textTheme;
  final double topPosition;
  const EnglishLevel({super.key, required this.textTheme, required this.topPosition});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: 70.w,
      child: Row(
        spacing: 10.w,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'English',
            style: textTheme.headlineMedium?.copyWith(color: primaryColor),
          ),
          BorderedText(text: PersonalData.englishLevel),
        ],
      ),
    );
  }
}
