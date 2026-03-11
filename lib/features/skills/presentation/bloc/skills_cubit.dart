import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_skills.dart';
import 'skills_state.dart';

class SkillsCubit extends Cubit<SkillsState> {
  final GetSkillsUsecase _getSkills;

  SkillsCubit(this._getSkills) : super(const SkillsInitial()) {
    load();
  }

  void load() => emit(SkillsLoaded(_getSkills()));
}