import 'package:cv_portfolio/features/main_screen/presentation/pages/main_page.dart';
import 'package:cv_portfolio/features/navigation_panel/presentation/pages/navigation_panel.dart';
import 'package:flutter/material.dart';

class EnterPoint extends StatelessWidget {
  const EnterPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MainPage(),
          NavigationPanel()
        ],
      ),
    );
  }
}
