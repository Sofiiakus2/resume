

import 'package:cv_portfolio/features/about/domain/entity/education_entity.dart';
import 'package:cv_portfolio/features/about/domain/repository/education_repository.dart';

class GetEducationUsecase {
  final EducationRepository repository;

  const GetEducationUsecase(this.repository);

  List<EducationEntity> call() => repository.getEducation();
}