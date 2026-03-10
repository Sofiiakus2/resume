import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_who_ami_usecase.dart';
import 'who_ami_state.dart';

class WhoAmiCubit extends Cubit<WhoAmiState> {
  final GetWhoAmiUsecase _getWhoAmi;

  WhoAmiCubit(this._getWhoAmi) : super(const WhoAmiInitial()) {
    load();
  }

  void load() => emit(WhoAmiLoaded(_getWhoAmi()));
}