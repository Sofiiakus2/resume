import '../../domain/entity/who_ami_entity.dart';
import '../../domain/repository/who_ami_repository.dart';
import '../datasources/local/who_ami_local_datasource.dart';

class WhoAmiRepositoryImpl implements WhoAmiRepository {
  final WhoAmiLocalDatasource datasource;

  const WhoAmiRepositoryImpl(this.datasource);

  @override
  WhoAmiEntity getWhoAmi() => datasource.getWhoAmi();
}