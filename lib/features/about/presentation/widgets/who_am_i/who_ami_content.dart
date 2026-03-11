import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/who_ami/who_ami_cubit.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/who_ami/who_ami_state.dart';
import 'package:cv_portfolio/shared/presentation/widgets/bullet_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoAmiContent extends StatelessWidget {
  const WhoAmiContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhoAmiCubit, WhoAmiState>(
      builder: (context, state) => switch (state) {
        WhoAmiInitial() => const SizedBox.shrink(),
        WhoAmiLoaded(:final data) => Padding(
          padding: EdgeInsets.symmetric(vertical: 45.w, horizontal: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: textPrimaryColor),
              ),
              SizedBox(height: 43.h),
              Text(
                data.subtitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                width: 1900.w,
                child: Text(
                  data.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 70.w),
              Text(
                'What I Do:',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: BulletList(list: data.responsibilities),
              ),
            ],
          ),
        ),
      },
    );
  }
}