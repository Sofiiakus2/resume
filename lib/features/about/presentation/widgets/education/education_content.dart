import 'package:cv_portfolio/features/about/presentation/widgets/education/education_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme.dart';

class EducationContent extends StatelessWidget {
  const EducationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 40.h),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, backgroundPrimaryColor],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'EDUCATION',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: textPrimaryColor),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 43.h),
          EducationRow(
              years: '2019 - 2021',
              university: 'Taras Shevchenko National University of Kyiv',
              degree: 'Computer Software Engineering, Junior Bachelor',
              logoPath: 'assets/uni/tsnu.png',
              logoSize: 300.w,
              spacing: 30.w,
              imageFirst: true,
              crossAxis: CrossAxisAlignment.start
          ),
          EducationRow(
              years: '2021 - 2025',
              university: 'Yuriy Fedkovych Chernivtsi National University',
              degree: 'Computer Software Engineering, Bachelor',
              logoPath: 'assets/uni/chnu.png',
              logoSize: 500.w,
              spacing: 0.w,
              imageFirst: false,
              crossAxis: CrossAxisAlignment.end
          ),
        ],
      ),
    );
  }
}
