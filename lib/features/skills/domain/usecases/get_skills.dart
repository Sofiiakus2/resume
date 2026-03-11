
import '../entity/skill_category_entity.dart';
import '../reporitory/skills_repository.dart';

class GetSkillsUsecase {
  final SkillsRepository repository;

  const GetSkillsUsecase(this.repository);

  List<SkillCategoryEntity> call() => repository.getSkills();
}