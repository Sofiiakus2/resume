import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme.dart';

class BluredBlob extends StatelessWidget {
  const BluredBlob({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -100,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 440.w),
        child: Transform.rotate(
          angle: -25 * pi / 180,
          child: SizedBox(
            height: 334.w,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [primaryColor, secondaryColor],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
