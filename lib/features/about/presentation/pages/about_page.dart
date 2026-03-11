import 'package:cv_portfolio/core/injection_container.dart';
import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/education/education_cubit.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/who_ami/who_ami_cubit.dart';
import 'package:cv_portfolio/features/about/presentation/widgets/education/education_content.dart';
import 'package:cv_portfolio/features/about/presentation/widgets/who_am_i/blur_effect.dart';
import 'package:cv_portfolio/features/about/presentation/widgets/who_am_i/who_ami_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              BlocProvider(
                create: (_) => sl<WhoAmiCubit>(),
                child: const WhoAmiContent(),
              ),
              BlocProvider(
                create: (_) => sl<EducationCubit>(),
                child: const EducationContent(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}