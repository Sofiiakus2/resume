import 'package:cv_portfolio/features/skills/domain/usecases/get_skills.dart';
import 'package:cv_portfolio/features/skills/presentation/bloc/skills_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkillsCubit extends Cubit<SkillsState> {
  final GetSkillsUsecase _getSkills;

  SkillsCubit(this._getSkills) : super(const SkillsInitial()) {
    load();
  }

  void load() => emit(SkillsLoaded(_getSkills()));
}