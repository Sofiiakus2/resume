import 'package:cv_portfolio/shared/presentation/widgets/effects/fade_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameSection extends StatefulWidget {
  final TextTheme textTheme;

  const NameSection({super.key, required this.textTheme});

  @override
  State<NameSection> createState() => _NameSectionState();
}

class _NameSectionState extends State<NameSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double _getRotationAngle(double width) {
    if (width >= 1920) return 0.0;

    const maxAngle = -5.0 * (3.14159 / 180);

    if (width <= 700) return maxAngle;

    final t = (1920 - width) / (1920 - 700);
    return maxAngle * t;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final angle = _getRotationAngle(width);

    return FadeIn(
      child: Transform.rotate(
        angle: angle,
        alignment: Alignment.bottomLeft,
        child: Column(
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
                    style: widget.textTheme.titleLarge,
                  ),
                ),
                Text('Flutter Developer', style: widget.textTheme.titleMedium),
              ],
            ),
            Text('Kushnirenko'.toUpperCase(), style: widget.textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}