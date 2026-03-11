
import '../../domain/entity/skill_category_entity.dart';
import '../../domain/reporitory/skills_repository.dart';
import '../datasources/local/skills_local_datasource.dart';

class SkillsRepositoryImpl implements SkillsRepository {
  final SkillsLocalDatasource datasource;

  const SkillsRepositoryImpl(this.datasource);

  @override
  List<SkillCategoryEntity> getSkills() => datasource.getSkills();
}