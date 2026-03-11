import 'package:cv_portfolio/features/skills/presentation/widgets/skill_category_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entity/skill_category_entity.dart';

class SkillsGrid extends StatelessWidget {
  final List<SkillCategoryEntity> skills;

  const SkillsGrid({required this.skills});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20.w,
      children: [
        for (int i = 0; i < skills.length; i += 2)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkillCategoryColumn(category: skills[i]),
              if (i + 1 < skills.length)
                SkillCategoryColumn(category: skills[i + 1]),
            ],
          ),
      ],
    );
  }
}