
import 'package:cv_portfolio/features/skills/presentation/bloc/skills_cubit.dart';
import 'package:cv_portfolio/features/skills/presentation/bloc/skills_state.dart';
import 'package:cv_portfolio/shared/presentation/widgets/blured_blob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/skills_grid.dart';


class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Row(
            spacing: 100.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'SKILLS',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 350.sp),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(40.w),
                  child: BlocBuilder<SkillsCubit, SkillsState>(
                    builder: (context, state) => switch (state) {
                      SkillsInitial() => const SizedBox.shrink(),
                      SkillsLoaded(:final skills) => SkillsGrid(skills: skills),
                    },
                  ),
                ),
              ),
            ],
          ),
          BluredBlob(),
        ],
      ),
    );
  }

}
