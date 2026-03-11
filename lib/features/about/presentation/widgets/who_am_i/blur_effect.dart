import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurEffect extends StatelessWidget {
  const BlurEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200.w,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 250.h,
            right: -300.w,
            child: _blurCircle(
              color: backgroundPrimaryColor.withOpacity(0.8),
              blurRadius: 300,
              spreadRadius: 30,
            ),
          ),
          Positioned(
            top: 450.h,
            right: 50.w,
            child: _blurCircle(
              color: blurColor,
              blurRadius: 200,
              spreadRadius: 50,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _blurCircle({
  required Color color,
  required double blurRadius,
  required double spreadRadius,
}) {
  return Container(
    width: 700.w,
    height: 700.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(1000),
      boxShadow: [
        BoxShadow(
          color: color,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
        ),
      ],
    ),
  );
}