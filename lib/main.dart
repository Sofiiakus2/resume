import 'package:cv_portfolio/core/routes/app_router.dart';
import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/injection_container.dart';

void main() async{
  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 960),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: lightTheme(),
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
