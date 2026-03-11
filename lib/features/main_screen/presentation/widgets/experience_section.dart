import 'package:cv_portfolio/core/constants/changeble_personal_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bordered_text.dart';

class ExperienceSection extends StatelessWidget {
  final TextTheme textTheme;
  const ExperienceSection({super.key, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 70.w,
      child: Row(
        spacing: 10.w,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BorderedText(text: PersonalData.yearsOfExperience),
          Text(' years of commercial experience ', style: textTheme.titleSmall),
        ],
      ),
    );
  }
}
