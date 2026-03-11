
import 'package:cv_portfolio/features/skills/domain/entity/skill_category_entity.dart';

sealed class SkillsState {
  const SkillsState();
}

class SkillsInitial extends SkillsState {
  const SkillsInitial();
}

class SkillsLoaded extends SkillsState {
  final List<SkillCategoryEntity> skills;

  const SkillsLoaded(this.skills);
}