import '../entity/education_entity.dart';

abstract interface class EducationRepository {
  List<EducationEntity> getEducation();
}