import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/about/presentation/pages/about_page.dart';
import 'package:cv_portfolio/features/contacts/presentation/widgets/contact_block.dart';
import 'package:cv_portfolio/features/experience/presentation/pages/experience_page.dart';
import 'package:cv_portfolio/features/main_screen/presentation/pages/main_page.dart';
import 'package:cv_portfolio/features/navigation_panel/presentation/pages/navigation_panel.dart';
import 'package:cv_portfolio/features/skills/presentation/pages/skills_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/injection_container.dart';
import 'features/contacts/presentation/bloc/contact_cubit.dart';
import 'features/experience/presentation/bloc/experience_cubit.dart';
import 'features/skills/presentation/bloc/skills_cubit.dart';

class EnterPoint extends StatelessWidget {
  const EnterPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainPage(),
            NavigationPanel(),
            AboutMe(),
            BlocProvider(
              create: (_) => sl<ExperienceCubit>(),
              child: const ExperiencePage(),
            ),
            Container(
              width: double.infinity,
              height: 15.h,
              color: primaryColor,
            ),
            BlocProvider(
              create: (_) => sl<SkillsCubit>(),
              child: const SkillsPage(),
            ),
            BlocProvider(
              create: (_) => sl<ContactCubit>(),
              child: const ContactBlock(),
            ),
          ],
        ),
      ),
    );
  }
}
