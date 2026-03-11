import 'package:cv_portfolio/core/theme.dart';
import 'package:cv_portfolio/shared/presentation/widgets/bullet_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entity/skill_category_entity.dart';

class SkillCategoryColumn extends StatelessWidget {
  final SkillCategoryEntity category;

  const SkillCategoryColumn({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(category.title, style: Theme.of(context).textTheme.headlineSmall),
          BulletList(color: textBlackColor, list: category.items),
        ],
      ),
    );
  }
}