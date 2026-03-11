
import 'package:cv_portfolio/features/skills/data/datasources/local/skills_local_datasource.dart';
import 'package:cv_portfolio/features/skills/domain/entity/skill_category_entity.dart';
import 'package:cv_portfolio/features/skills/domain/reporitory/skills_repository.dart';

class SkillsRepositoryImpl implements SkillsRepository {
  final SkillsLocalDatasource datasource;

  const SkillsRepositoryImpl(this.datasource);

  @override
  List<SkillCategoryEntity> getSkills() => datasource.getSkills();
}