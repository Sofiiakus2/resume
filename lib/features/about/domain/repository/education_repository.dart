import 'package:cv_portfolio/features/about/domain/entity/education_entity.dart';

abstract interface class EducationRepository {
  List<EducationEntity> getEducation();
}