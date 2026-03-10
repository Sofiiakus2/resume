import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_education.dart';
import 'education_state.dart';

class EducationCubit extends Cubit<EducationState> {
  final GetEducationUsecase _getEducation;

  EducationCubit(this._getEducation) : super(const EducationInitial()) {
    load();
  }

  void load() => emit(EducationLoaded(_getEducation()));
}