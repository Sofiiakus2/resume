
import '../../domain/entity/education_entity.dart';
import '../../domain/repository/education_repository.dart';
import '../datasources/local/education_local_datasource.dart';

class EducationRepositoryImpl implements EducationRepository {
  final EducationLocalDatasource datasource;

  const EducationRepositoryImpl(this.datasource);

  @override
  List<EducationEntity> getEducation() => datasource.getEducation();
}