
import 'package:cv_portfolio/features/experience/domain/entity/experience_entity.dart';

abstract interface class ExperienceRepository {
  List<ExperienceEntity> getExperiences();
}