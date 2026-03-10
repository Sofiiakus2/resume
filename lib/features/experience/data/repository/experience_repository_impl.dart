
import '../../domain/entity/experience_entity.dart';
import '../../domain/repository/experience_repository.dart';
import '../datasource/local/experience_local_datasource.dart';

class ExperienceRepositoryImpl implements ExperienceRepository {
  final ExperienceLocalDatasource datasource;

  const ExperienceRepositoryImpl(this.datasource);

  @override
  List<ExperienceEntity> getExperiences() => datasource.getExperiences();
}