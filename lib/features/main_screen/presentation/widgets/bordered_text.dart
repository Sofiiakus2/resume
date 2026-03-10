import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

class BorderedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? strokeColor;
  final double strokeWidth;

  const BorderedText({
    super.key,
    required this.text,
    this.style,
    this.strokeColor,
    this.strokeWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? Theme.of(context).textTheme.titleMedium;
    final color = strokeColor ?? primaryColor;

    return Text(
      text,
      style: baseStyle?.copyWith(
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..color = color,
      ),
    );
  }
}