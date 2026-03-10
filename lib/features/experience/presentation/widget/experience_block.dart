import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/shared/presentation/widgets/bullet_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceBlock extends StatelessWidget {
  final List<String> list1;
  final List<String> list2;
  final String term;
  final String company;

  const ExperienceBlock({super.key, required this.list1, required this.list2, required this.term, required this.company});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 74.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(term.toUpperCase(),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: textBlackColor),
          ),
          Text(company.toUpperCase(),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: textBlackColor, fontSize: 68.sp),
          ),
          Text('Flutter Developer',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: textBlackColor, fontSize: 48.sp),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding: EdgeInsets.only(left: 50.0.w),
            child: BulletList(list: list1, color: textBlackColor,),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding: EdgeInsets.only(left: 200.0.w),
            child: BulletList(list: list2, color: textBlackColor,),
          ),

        ],
      ),
    );
  }
}
