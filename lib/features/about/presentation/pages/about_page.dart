import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/about/presentation/widgets/education/education_content.dart';

import 'package:flutter/material.dart';

import '../widgets/who_am_i/blur_effect.dart';
import '../widgets/who_am_i/who_ami_content.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: primaryColor,
      child: Stack(
        children: [
          BlurEffect(),
          Column(
            children: [
              WhoAmiContent(),
              EducationContent(),
            ],
          ),
        ],
      ),
    );
  }
}