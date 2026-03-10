
import '../entity/experience_entity.dart';
import '../repository/experience_repository.dart';

class GetExperiencesUsecase {
  final ExperienceRepository repository;

  const GetExperiencesUsecase(this.repository);

  List<ExperienceEntity> call() => repository.getExperiences();
}