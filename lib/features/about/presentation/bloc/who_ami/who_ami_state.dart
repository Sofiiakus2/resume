
import 'package:cv_portfolio/features/about/domain/entity/who_ami_entity.dart';

sealed class WhoAmiState {
  const WhoAmiState();
}

class WhoAmiInitial extends WhoAmiState {
  const WhoAmiInitial();
}

class WhoAmiLoaded extends WhoAmiState {
  final WhoAmiEntity data;

  const WhoAmiLoaded(this.data);
}