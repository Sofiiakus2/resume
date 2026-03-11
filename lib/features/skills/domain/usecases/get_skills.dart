
import 'package:cv_portfolio/features/skills/domain/entity/skill_category_entity.dart';
import 'package:cv_portfolio/features/skills/domain/reporitory/skills_repository.dart';

class GetSkillsUsecase {
  final SkillsRepository repository;

  const GetSkillsUsecase(this.repository);

  List<SkillCategoryEntity> call() => repository.getSkills();
}