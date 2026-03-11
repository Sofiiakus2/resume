import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/bordered_text.dart';
import 'package:cv_portfolio/shared/presentation/widgets/effects/fade_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResumeSection extends StatelessWidget {
  final TextTheme textTheme;
  final double topPosition;

  const ResumeSection({super.key, required this.textTheme, required this.topPosition});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition + 200.h,
      right: 400,
      child: FadeIn(
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Resume',
                  style: textTheme.headlineMedium?.copyWith(color: primaryColor),
                ),
                Text(
                  'download CV',
                  style: textTheme.labelMedium?.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: primaryColor,
                  ),
                ),
              ],
            ),
            const BorderedText(text: '&'),
            Text(
              'Portfolio',
              style: textTheme.headlineMedium?.copyWith(color: primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
