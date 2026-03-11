
import '../entity/skill_category_entity.dart';

abstract interface class SkillsRepository {
  List<SkillCategoryEntity> getSkills();
}