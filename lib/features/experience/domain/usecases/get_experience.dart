
import 'package:cv_portfolio/features/experience/domain/entity/experience_entity.dart';
import 'package:cv_portfolio/features/experience/domain/repository/experience_repository.dart';

class GetExperiencesUsecase {
  final ExperienceRepository repository;

  const GetExperiencesUsecase(this.repository);

  List<ExperienceEntity> call() => repository.getExperiences();
}