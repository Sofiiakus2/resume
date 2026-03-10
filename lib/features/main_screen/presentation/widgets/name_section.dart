import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameSection extends StatelessWidget {
  final TextTheme textTheme;

  const NameSection({super.key, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 33.w,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 23.sp, top: 85),
              child: Text(
                'Sofiia'.toUpperCase(),
                style: textTheme.titleLarge,
              ),
            ),
            Text('Flutter Developer', style: textTheme.titleMedium),
          ],
        ),
        Text('Kushnirenko'.toUpperCase(), style: textTheme.titleLarge),
      ],
    );
  }
}
