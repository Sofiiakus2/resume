import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/navigation_panel/presentation/widgets/pages_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 380.0.w, vertical: 15.h),
          child: PagesList(),
        )
      ),
    );
  }
}
