import 'package:cv_portfolio/features/main_screen/presentation/widgets/bordered_text.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/english_level.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/experience_section.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/name_section.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/photo_sector.dart';
import 'package:cv_portfolio/features/main_screen/presentation/widgets/resume_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final topPosition = (size.height / 2).clamp(360.0, double.infinity);
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 960,
      child: Scaffold(
        backgroundColor: backgroundPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const SizedBox(height: 960, width: 1920),
                NameSection(textTheme: textTheme),
                PhotoSector(),
                EnglishLevel(textTheme: textTheme, topPosition: topPosition),
                ResumeSection(textTheme: textTheme, topPosition: topPosition),
                ExperienceSection(textTheme: textTheme),
              ],
            ),
          ),
        ),
      ),
    );
  }
}