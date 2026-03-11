import 'package:cv_portfolio/features/about/domain/usecases/get_who_ami_usecase.dart';
import 'package:cv_portfolio/features/about/presentation/bloc/who_ami/who_ami_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhoAmiCubit extends Cubit<WhoAmiState> {
  final GetWhoAmiUsecase _getWhoAmi;

  WhoAmiCubit(this._getWhoAmi) : super(const WhoAmiInitial()) {
    load();
  }

  void load() => emit(WhoAmiLoaded(_getWhoAmi()));
}