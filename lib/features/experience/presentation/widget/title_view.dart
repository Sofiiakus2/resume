import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blured_text.dart';

class TitleView extends StatelessWidget {
  final String text;

  const TitleView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned(
            left: 0.w,
            top: 75.h,
            right: 0.w,
            child: BluredText(text: text),
          ),
          Positioned(
            left: 0,
            top: 40.h,
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 200.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
