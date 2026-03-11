import 'package:cv_portfolio/enter_point.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const EnterPoint(),
    ),
  ],
);