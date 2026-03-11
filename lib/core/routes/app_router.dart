import 'package:cv_portfolio/enter_point.dart';
import 'package:cv_portfolio/features/error/presentation/pages/error_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  redirect: (context, state) {
    debugPrint('uri: ${state.uri}');
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const EnterPoint(),
    ),
  ],
);