import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/whoAmI/presentation/widgets/bullet_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoAnIPage extends StatelessWidget {
  const WhoAnIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1150.w,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            SizedBox(height: 1150.w, width: MediaQuery.of(context).size.width,),
            Positioned(
              bottom: -200.h,
              right: 30.w,
              child: Container(
                width: 700.w,
                height: 700.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  boxShadow: [
                    BoxShadow(
                      color: blurColor,
                      blurRadius: 200,
                      spreadRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.h,
              right: -300.w,
              child: Container(
                width: 700.w,
                height: 700.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  boxShadow: [
                    BoxShadow(
                      color: backgroundPrimaryColor.withOpacity(0.8),
                      blurRadius: 300,
                      spreadRadius: 30,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 45.0.w, horizontal: 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('who am i?'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(height: 43.h,),
                  Text('Flutter Developer building scalable mobile applications',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    width: 1900.w,
                    child: Text('2+ years of commercial experience developing production-ready applications for iOS and Android, with additional experience in web development.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(height: 70.w,),
                  Text('What I Do:',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: BulletList(),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
