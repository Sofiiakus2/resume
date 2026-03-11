import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

class LinkButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const LinkButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: textPrimaryColor,
          decoration: TextDecoration.underline,
          decorationColor: textPrimaryColor,
        ),
      ),
    );
  }
}