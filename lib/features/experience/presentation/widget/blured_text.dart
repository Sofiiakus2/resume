import 'dart:ui';

import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BluredText extends StatelessWidget {
  final String text;

  const BluredText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 20.w, sigmaY: 20.w),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
