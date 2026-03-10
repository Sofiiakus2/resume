
import '../../domain/entity/experience_entity.dart';

sealed class ExperienceState {
  const ExperienceState();
}

class ExperienceInitial extends ExperienceState {
  const ExperienceInitial();
}

class ExperienceLoaded extends ExperienceState {
  final List<ExperienceEntity> experiences;

  const ExperienceLoaded(this.experiences);
}