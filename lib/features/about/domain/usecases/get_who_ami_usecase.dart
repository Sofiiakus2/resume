import '../entity/who_ami_entity.dart';
import '../repository/who_ami_repository.dart';

class GetWhoAmiUsecase {
  final WhoAmiRepository repository;

  const GetWhoAmiUsecase(this.repository);

  WhoAmiEntity call() => repository.getWhoAmi();
}