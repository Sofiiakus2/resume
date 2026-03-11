
import 'package:cv_portfolio/features/experience/data/datasource/local/experience_local_datasource.dart';
import 'package:cv_portfolio/features/experience/domain/entity/experience_entity.dart';
import 'package:cv_portfolio/features/experience/domain/repository/experience_repository.dart';

class ExperienceRepositoryImpl implements ExperienceRepository {
  final ExperienceLocalDatasource datasource;

  const ExperienceRepositoryImpl(this.datasource);

  @override
  List<ExperienceEntity> getExperiences() => datasource.getExperiences();
}