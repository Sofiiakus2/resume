import 'package:flutter/material.dart';

class PagesList extends StatefulWidget {
  const PagesList({super.key});

  @override
  State<PagesList> createState() => _PagesListState();
}

class _PagesListState extends State<PagesList> {
  final pagesNames = [
    'who am I?',
    'education',
    'experience',
    'skills',
    'portfolio',
    'contacts',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: pagesNames
          .map((name) => Text(
        name,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          decoration: TextDecoration.underline,
          decorationColor:
          Theme.of(context).textTheme.labelLarge?.color,
        ),
      ))
          .toList(),
    );
  }
}