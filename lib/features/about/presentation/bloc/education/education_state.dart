import '../../../domain/entity/education_entity.dart';

sealed class EducationState {
  const EducationState();
}

class EducationInitial extends EducationState {
  const EducationInitial();
}

class EducationLoaded extends EducationState {
  final List<EducationEntity> education;

  const EducationLoaded(this.education);
}