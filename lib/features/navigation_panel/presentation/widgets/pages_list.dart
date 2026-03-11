import 'package:cv_portfolio/core/routes/skroll_keys.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PagesList extends StatefulWidget {
  const PagesList({super.key});

  @override
  State<PagesList> createState() => _PagesListState();
}

class _PagesListState extends State<PagesList>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _animated = false;

  late final List<(String, GlobalKey)> _pages = [
    ('who am I?', ScrollKeys.whoAmI),
    ('education', ScrollKeys.education),
    ('experience', ScrollKeys.experience),
    ('skills', ScrollKeys.skills),
    ('portfolio', ScrollKeys.portfolio),
    ('contacts', ScrollKeys.contacts),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0.5 && !_animated) {
      _animated = true;
      _controller.forward();
    }
  }

  Animation<Offset> _slideAnimation(int index) {
    final start = index / _pages.length;
    final end = (index + 1) / _pages.length;

    return Tween<Offset>(
      begin: const Offset(-20, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(start, end, curve: Curves.easeOut),
      ),
    );
  }

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
    return VisibilityDetector(
      key: const Key('pages_list'),
      onVisibilityChanged: _onVisibilityChanged,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _pages.indexed
            .map((item) => SlideTransition(
          position: _slideAnimation(item.$1),
          child: GestureDetector(
            onTap: () => _scrollTo(item.$2.$2),
            child: Text(
              item.$2.$1,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.color,
              ),
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}