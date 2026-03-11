import 'package:cv_portfolio/features/about/domain/usecases/get_education.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/education/education_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationCubit extends Cubit<EducationState> {
  final GetEducationUsecase _getEducation;

  EducationCubit(this._getEducation) : super(const EducationInitial()) {
    load();
  }

  void load() => emit(EducationLoaded(_getEducation()));
}