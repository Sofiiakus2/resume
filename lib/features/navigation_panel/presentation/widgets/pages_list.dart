import 'package:cv_portfolio/core/routes/skroll_keys.dart';
import 'package:flutter/material.dart';

class PagesList extends StatefulWidget {
  const PagesList({super.key});

  @override
  State<PagesList> createState() => _PagesListState();
}

class _PagesListState extends State<PagesList> {
  late final List<(String, GlobalKey)> _pages = [
    ('who am I?', ScrollKeys.whoAmI),
    ('education', ScrollKeys.education),
    ('experience', ScrollKeys.experience),
    ('skills', ScrollKeys.skills),
    ('portfolio', ScrollKeys.portfolio),
    ('contacts', ScrollKeys.contacts),
  ];

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _pages
          .map((page) => GestureDetector(
        onTap: () => _scrollTo(page.$2),
        child: Text(
          page.$1,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            decoration: TextDecoration.underline,
            decorationColor:
            Theme.of(context).textTheme.labelLarge?.color,
          ),
        ),
      ))
          .toList(),
    );
  }
}