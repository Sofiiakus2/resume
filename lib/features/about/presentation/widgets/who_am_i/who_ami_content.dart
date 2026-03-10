import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme.dart';
import '../bullet_list.dart';

class WhoAmiContent extends StatelessWidget {
  const WhoAmiContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 45.w, horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WHO AM I?',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: textPrimaryColor),
          ),
          SizedBox(height: 43.h),
          Text(
            'Flutter Developer building scalable mobile applications',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            width: 1900.w,
            child: Text(
              '2+ years of commercial experience developing production-ready '
                  'applications for iOS and Android, with additional experience '
                  'in web development.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(height: 70.w),
          Text(
            'What I Do:',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: BulletList(),
          ),
        ],
      ),
    );
  }
}
