import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/education/education_cubit.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/education/education_state.dart';
import 'package:cv_portfolio/features/about/presentation/widgets/education/education_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationContent extends StatelessWidget {
  const EducationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 40.h),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Color(0xffcbcbcb)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'EDUCATION',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: textPrimaryColor),
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 43.h),
          BlocBuilder<EducationCubit, EducationState>(
            builder: (context, state) => switch (state) {
              EducationInitial() => const SizedBox.shrink(),
              EducationLoaded(:final education) => Column(
                children: education.map((e) => EducationRow(
                  years: e.years,
                  university: e.university,
                  degree: e.degree,
                  logoPath: e.logoPath,
                  logoSize: e.logoSize,
                  spacing: e.spacing,
                  imageFirst: e.imageFirst,
                  crossAxis: e.crossAxis,
                )).toList(),
              ),
            },
          ),
        ],
      ),
    );
  }
}