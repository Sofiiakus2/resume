import 'package:cv_portfolio/features/about/data/datasources/local/who_ami_local_datasource.dart';
import 'package:cv_portfolio/features/about/domain/entity/who_ami_entity.dart';
import 'package:cv_portfolio/features/about/domain/repository/who_ami_repository.dart';

class WhoAmiRepositoryImpl implements WhoAmiRepository {
  final WhoAmiLocalDatasource datasource;

  const WhoAmiRepositoryImpl(this.datasource);

  @override
  WhoAmiEntity getWhoAmi() => datasource.getWhoAmi();
}