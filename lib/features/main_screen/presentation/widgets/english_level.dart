import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/changeble_personal_data.dart';
import '../../../../core/theme.dart';
import 'bordered_text.dart';

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
