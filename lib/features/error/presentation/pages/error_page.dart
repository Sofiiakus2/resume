import 'package:cv_portfolio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimaryColor,
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                '404',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/2.1,
            top: MediaQuery.of(context).size.height/4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '404',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  'sorry, we couldn’t find this page'.toUpperCase(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2.5,
            top: MediaQuery.of(context).size.height / 2.5,
            child: GestureDetector(
              onTap: () => context.go('/'),
              child: Text(
                'GO BACK',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: Theme.of(context).textTheme.displaySmall?.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
