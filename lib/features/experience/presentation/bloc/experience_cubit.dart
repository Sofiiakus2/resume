
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_experience.dart';
import 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  final GetExperiencesUsecase _getExperiences;

  ExperienceCubit(this._getExperiences) : super(const ExperienceInitial()) {
    load();
  }

  void load() => emit(ExperienceLoaded(_getExperiences()));
}