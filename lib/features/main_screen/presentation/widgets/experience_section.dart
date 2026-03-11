import 'package:cv_portfolio/core/constants/changeble_personal_data.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/bordered_text.dart';
import 'package:cv_portfolio/shared/presentation/widgets/effects/fade_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceSection extends StatelessWidget {
  final TextTheme textTheme;
  const ExperienceSection({super.key, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 70.w,
      child: FadeIn(
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const BorderedText(text: PersonalData.yearsOfExperience),
            Text(' years of commercial experience ', style: textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
