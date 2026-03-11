import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class TypingText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const TypingText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
  });

  @override
  State<TypingText> createState() => TypingTextState();
}

class TypingTextState extends State<TypingText> {
  int _visibleCount = 0;
  bool _started = false;

  void _startTyping() {
    if (_started) return;
    _started = true;

    for (int i = 0; i < widget.text.length; i++) {
      Future.delayed(Duration(milliseconds: i * 30), () {
        if (mounted) setState(() => _visibleCount = i + 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('typing_${widget.text.hashCode}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3) _startTyping();
      },
      child: RichText(
        textAlign: widget.textAlign ?? TextAlign.end,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          children: widget.text.characters.indexed.map((item) {
            final isVisible = item.$1 < _visibleCount;
            return TextSpan(
              text: item.$2,
              style: widget.style?.copyWith(
                color: isVisible
                    ? widget.style?.color
                    : Colors.transparent,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}