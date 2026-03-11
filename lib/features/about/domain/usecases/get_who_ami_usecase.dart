import 'package:cv_portfolio/features/about/domain/entity/who_ami_entity.dart';
import 'package:cv_portfolio/features/about/domain/repository/who_ami_repository.dart';

class GetWhoAmiUsecase {
  final WhoAmiRepository repository;

  const GetWhoAmiUsecase(this.repository);

  WhoAmiEntity call() => repository.getWhoAmi();
}