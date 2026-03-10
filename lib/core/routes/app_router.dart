import 'package:cv_portfolio/enter_point.dart';
import 'package:go_router/go_router.dart';

import '../../features/main_screen/presentation/pages/main_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const EnterPoint(),
    ),
  ],
);