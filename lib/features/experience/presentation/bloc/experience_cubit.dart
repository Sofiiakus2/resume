
import 'package:cv_portfolio/features/experience/domain/usecases/get_experience.dart';
import 'package:cv_portfolio/features/experience/presentation/bloc/experience_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  final GetExperiencesUsecase _getExperiences;

  ExperienceCubit(this._getExperiences) : super(const ExperienceInitial()) {
    load();
  }

  void load() => emit(ExperienceLoaded(_getExperiences()));
}