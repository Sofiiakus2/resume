import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationRow extends StatelessWidget {
  final String years;
  final String university;
  final String degree;
  final String logoPath;
  final double logoSize;
  final double spacing;
  final bool imageFirst;
  final CrossAxisAlignment crossAxis;

  const EducationRow({
    super.key,
    required this.years,
    required this.university,
    required this.degree,
    required this.logoPath,
    required this.logoSize,
    required this.spacing,
    required this.imageFirst,
    this.crossAxis = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    // Всі widgets будуються тут — де є доступ до context
    final logo = Image.asset(logoPath, height: logoSize, width: logoSize);

    final info = Expanded(
      child: Column(
        crossAxisAlignment: crossAxis,
        children: [
          Text(years, style: Theme.of(context).textTheme.headlineMedium),
          Text(
            university,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontSize: 68.sp),
          ),
          Text(degree, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );

    if (spacing < 0) {
      final children = imageFirst ? [logo, info] : [info, logo];
      return Row(
        children: [
          children[0],
          Transform.translate(
            offset: Offset(spacing, 0),
            child: children[1],
          ),
        ],
      );
    }

    return Row(
      spacing: spacing,
      children: imageFirst ? [logo, info] : [info, logo],
    );
  }
}