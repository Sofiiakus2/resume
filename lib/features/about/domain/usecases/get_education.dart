

import '../entity/education_entity.dart';
import '../repository/education_repository.dart';

class GetEducationUsecase {
  final EducationRepository repository;

  const GetEducationUsecase(this.repository);

  List<EducationEntity> call() => repository.getEducation();
}