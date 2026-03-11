
import 'package:cv_portfolio/features/skills/domain/entity/skill_category_entity.dart';

abstract interface class SkillsRepository {
  List<SkillCategoryEntity> getSkills();
}