import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/experience/presentation/bloc/experience_cubit.dart';
import 'package:cv_portfolio/features/experience/presentation/bloc/experience_state.dart';
import 'package:cv_portfolio/features/experience/presentation/widget/experience_block.dart';
import 'package:cv_portfolio/features/experience/presentation/widget/title_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 300.h,
            child: const TitleView(text: 'EXPERIENCE'),
          ),
          BlocBuilder<ExperienceCubit, ExperienceState>(
            builder: (context, state) => switch (state) {
              ExperienceInitial() => const SizedBox.shrink(),
              ExperienceLoaded(:final experiences) => Column(
                children: [
                  for (int i = 0; i < experiences.length; i++) ...[
                    ExperienceBlock(
                      term: experiences[i].term,
                      company: experiences[i].company,
                      list1: experiences[i].list1,
                      list2: experiences[i].list2,
                    ),
                    if (i < experiences.length - 1)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 20.h,
                        ),
                        child: Divider(thickness: 1, color: textBlackColor),
                      ),
                  ],
                ],
              ),
            },
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}