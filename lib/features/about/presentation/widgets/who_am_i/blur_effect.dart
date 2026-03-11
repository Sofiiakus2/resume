import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurEffect extends StatefulWidget {
  const BlurEffect({super.key});

  @override
  State<BlurEffect> createState() => _BlurEffectState();
}

class _BlurEffectState extends State<BlurEffect>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _shimmer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _shimmer = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200.w,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _shimmer,
        builder: (context, _) => Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 250.h,
              right: -300.w,
              child: _blurCircle(
                color: backgroundPrimaryColor
                    .withOpacity(0.4 + 0.4 * _shimmer.value),
                blurRadius: 250 + 100 * _shimmer.value,
                spreadRadius: 20 + 20 * _shimmer.value,
              ),
            ),
            Positioned(
              top: 450.h,
              right: 50.w,
              child: _blurCircle(
                color: blurColor
                    .withOpacity(0.5 + 0.5 * (1 - _shimmer.value)),
                blurRadius: 150 + 100 * (1 - _shimmer.value),
                spreadRadius: 30 + 30 * (1 - _shimmer.value),
              ),
            ),
          ],
        ),
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